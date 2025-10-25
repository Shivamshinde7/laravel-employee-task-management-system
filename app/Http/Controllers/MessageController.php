<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Message;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;

class MessageController extends Controller
{
    // Store message and send to WebSocket server
    public function store(Request $request)
    {
        $request->validate([
            'content'     => 'nullable|string',
            'attachment'  => 'nullable|file|mimes:jpg,jpeg,png,gif,webp,pdf|max:10048',
            'receiver_id' => 'nullable|exists:users,id',
        ]);

        $attachmentName = null;

       if ($request->hasFile('attachment')) {
        $file = $request->file('attachment');
        $filename = time() . '_' . rand(1000,9999) . '.' . $file->getClientOriginalExtension();

        $file->storeAs('attachments', $filename, 'public');

        $publicPath = public_path('attachments');
        if (!file_exists($publicPath)) {
            mkdir($publicPath, 0755, true); 
        }
        $file->move($publicPath, $filename);

        $attachmentName = $filename;
    }

        Message::create([
            'user_id'     => auth()->id(),
            'receiver_id' => $request->receiver_id,
            'content'     => $request->content,
            'attachment'  => $attachmentName,
        ]);

        // Send payload to Node WebSocket server
        $payload = [
            'sender'         => auth()->user()->name,
            'content'        => $request->content,
            'attachment_url' => $attachmentName ? asset('storage/attachments/' . $attachmentName) : '',
            'receiver_id'    => $request->receiver_id
        ];

        $socketUrl = 'http://127.0.0.1:3000'; // Node HTTP bridge
        Http::post($socketUrl, $payload);

        return response()->json([
            'success'    => true,
            'attachment' => $attachmentName,
            'attachment_url' => $attachmentName ? asset('storage/attachments/' . $attachmentName) : null
        ]);
    }

 

    // Show DM view with sidebar users
    public function showDM($receiverId)
    {
        $receiver = User::findOrFail($receiverId);
        $users = User::where('id', '!=', auth()->id())->get();

        return view('dm', compact('receiver', 'users'));
    }
}
