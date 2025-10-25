import express from "express";
import bodyParser from "body-parser";
import { WebSocketServer } from "ws";

const app = express();
app.use(bodyParser.json());

const wss = new WebSocketServer({ port: 8080 });
let clients = [];

wss.on("connection", (ws) => {
  clients.push(ws);
  console.log("Client connected. Total:", clients.length);

  ws.on("close", () => {
    clients = clients.filter((client) => client !== ws);
    console.log("Client disconnected. Total:", clients.length);
  });
});

app.post("/", (req, res) => {
  console.log("📩 Received from Laravel:", req.body);

  clients.forEach((client) => {
    if (client.readyState === 1) {
      client.send(JSON.stringify(req.body));
    }
  });

  res.json({ success: true });
});

app.listen(3000, () => {
  console.log("HTTP bridge running on http://127.0.0.1:3000");
});

console.log("WebSocket server running on ws://127.0.0.1:8080");
