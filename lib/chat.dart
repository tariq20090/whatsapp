import 'package:flutter/material.dart';
class ChatScreen extends StatelessWidget {
  final String recipient;

  const ChatScreen({Key? key, required this.recipient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipient),
      ),
      body: ListView(
        children: [
          
        ],
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
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