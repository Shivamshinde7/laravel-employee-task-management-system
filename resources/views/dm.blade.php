@extends('layouts.app')

@section('content')
<div class="container-fluid vh-100">
    <div class="row h-100">
        <!-- Sidebar -->
        @include('layouts.sidebar')

        <!-- Main Content: DM Chat -->
        <div class="col-md-9 col-lg-10 p-0 d-flex flex-column vh-100">
            <!-- Chat Header -->
            <div class="bg-white border-bottom p-3">
                <h5 class="mb-0">💬 {{ $receiver->name }}</h5>
            </div>

            <!-- Messages Area -->
            <div id="messagesection" class="flex-grow-1 overflow-auto p-3" style="background-color: #f8f9fa;">
                @foreach($receiver->directMessagesWith(auth('auth')->id()) as $message)
                    <div class="mb-3">
                        <strong>{{ $message->sender->name }}</strong>
                        @if($message->content)
                            <p>{{ $message->content }}</p>
                        @endif
                        @if($message->attachment)
                            @php
                                $fileUrl = asset('attachments/' . $message->attachment);
                                $ext = strtolower(pathinfo($message->attachment, PATHINFO_EXTENSION));
                            @endphp
                            @if(in_array($ext, ['jpg','jpeg','png','gif','webp']))
                                <a href="{{ $fileUrl }}" target="_blank">
                                    <img src="{{ $fileUrl }}" style="max-width:150px; max-height:150px; display:block; margin-top:5px;">
                                </a>
                            @elseif($ext === 'pdf')
                                <br><a href="{{ $fileUrl }}" target="_blank">📄 Open PDF</a>
                            @else
                                <a href="{{ $fileUrl }}" target="_blank" download>📎 Download File</a>
                            @endif
                        @endif
                        <small class="text-muted d-block mt-1">{{ $message->created_at->diffForHumans() }}</small>
                    </div>
                @endforeach
            </div>

            <!-- Dropzone + Message Input -->
            <div class="border-top bg-white p-3">
                <form id="messageForm" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="receiver_id" value="{{ $receiver->id }}">
                    <div id="dropzone" class="border border-2 border-secondary rounded p-3 mb-2 text-center" style="cursor:pointer;">
                        <p id="dropzone-text" class="m-0">📁 Drag & drop a file here or click to browse</p>
                        <input type="file" name="attachment" id="attachmentInput" class="d-none" accept="image/*,application/pdf">
                    </div>
                    <div id="file-preview" class="mb-2 d-none"></div>
                    <div class="input-group">
                        <input type="text" name="content" id="contentInput" class="form-control" placeholder="Type your message...">
                        <button class="btn btn-primary" type="submit">Send</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
const messagesection = document.getElementById('messagesection');
const messageForm = document.getElementById('messageForm');
const contentInput = document.getElementById('contentInput');
const attachmentInput = document.getElementById('attachmentInput');
const dropzone = document.getElementById('dropzone');
const dropzoneText = document.getElementById('dropzone-text');
const filePreview = document.getElementById('file-preview');

// Drag & Drop
dropzone.addEventListener('click', () => attachmentInput.click());
[dropzone, messagesection].forEach(area => {
    area.addEventListener('dragover', e => { e.preventDefault(); area.classList.add('bg-light'); dropzoneText.textContent = '📤 Drop the file to attach'; });
    area.addEventListener('dragleave', () => { area.classList.remove('bg-light'); dropzoneText.textContent = '📁 Drag & drop a file here or click to browse'; });
    area.addEventListener('drop', e => { e.preventDefault(); area.classList.remove('bg-light'); handleFileDrop(e.dataTransfer.files); });
});
attachmentInput.addEventListener('change', () => handleFileDrop(attachmentInput.files));

function handleFileDrop(files){
    if(files.length > 0){
        attachmentInput.files = files;
        const file = files[0];
        dropzoneText.textContent = `📎 ${file.name} ready to send`;
        filePreview.classList.remove('d-none');
        filePreview.innerHTML = `<small class="text-muted">Selected: ${file.name}</small>`;
    }else{
        filePreview.classList.add('d-none');
        dropzoneText.textContent = '📁 Drag & drop a file here or click to browse';
    }
}

// WebSocket
const ws = new WebSocket('ws://127.0.0.1:8080');

ws.onopen = () => console.log('WebSocket connected!');

ws.onmessage = (event) => {
    const data = JSON.parse(event.data);
    const currentUserId = {{ auth()->id() }};

    // Show message if current user is sender or receiver
    if(data.sender_id == currentUserId || data.receiver_id == currentUserId){
        appendMessage(data);
    }

    console.log("🔔 Incoming message:", data);
};

// Append message function
function appendMessage(data){
    const currentUserId = {{ auth()->id() }};
    const div = document.createElement('div');
    div.classList.add('mb-3');
    div.style.textAlign = (data.sender_id == currentUserId) ? 'right' : 'left';

    div.innerHTML = `<strong>${data.sender}</strong>
                     <p>${data.content || ''}</p>`;

    if(data.attachment_url){
        div.innerHTML += `<a href="${data.attachment_url}" target="_blank">📎 Attachment</a>`;
    }

    const small = document.createElement('small');
    small.classList.add('text-muted', 'd-block', 'mt-1');
    small.textContent = 'Just now';
    div.appendChild(small);

    messagesection.appendChild(div);
    messagesection.scrollTop = messagesection.scrollHeight;
}

// Send message
messageForm.addEventListener('submit', sendMessage);
contentInput.addEventListener('keydown', e => { if(e.key==='Enter'&&!e.shiftKey){ e.preventDefault(); sendMessage(e); }});

function sendMessage(e){
    e.preventDefault();
    const formData = new FormData(messageForm);
    if(!formData.get('content') && !formData.get('attachment').name) return;

    fetch("{{ route('messages.store') }}", {
        method:'POST',
        body: formData,
        headers:{ 'X-CSRF-TOKEN': document.querySelector('input[name="_token"]').value }
    })
    .then(res=>res.json())
    .then(data=>{
        if(data.success){
            contentInput.value='';
            attachmentInput.value='';
            filePreview.classList.add('d-none');
            dropzoneText.textContent='📁 Drag & drop a file here or click to browse';

            // Send to WebSocket server
            const payload = {
                sender: '{{ auth()->user()->name }}',
                sender_id: {{ auth()->id() }},
                content: formData.get('content'),
                attachment_url: data.attachment_url || '',
                receiver_id: formData.get('receiver_id')
            };

            ws.send(JSON.stringify(payload));

            // Append immediately on sender page
            appendMessage(payload);
        }
    });
}
</script>


@endsection
