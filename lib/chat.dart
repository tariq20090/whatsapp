import 'package:flutter/material.dart';
class ChatScreen extends StatelessWidget {
  final String recipient;

  const ChatScreen({super.key, required this.recipient});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipient),
      ),
      body: ListView(
        children: const [
          
        ],
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Type a message',
                ),
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              onPressed: () {
                
              },
              icon: const Icon(Icons.send),
            ),
          ],
        ),
      ),
    );
  }
}