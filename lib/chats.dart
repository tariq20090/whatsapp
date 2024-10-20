import 'package:flutter/material.dart';

class Chat {
  final String name;
  final String message;
  final String time;
  final String imageUrl;

  Chat({
    required this.name,
    required this.message,
    required this.time,
    required this.imageUrl,
  });
}

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  final List<Chat> _chats = [
    Chat(
      name: 'Muzzamil',
      message: 'Hello! How are you?',
      time: '10:00 AM',
      imageUrl: '(link unavailable)',
    ),
    Chat(
      name: 'Mubashir',
      message: 'I am good, thanks!',
      time: '9:00 AM',
      imageUrl: '(link unavailable)',
    ),
    Chat(
      name: 'Tariq',
      message: 'What are you doing?',
      time: '8:00 AM',
      imageUrl: '(link unavailable)',
    ),
    Chat(
      name: 'Hamza',
      message: 'Just chilling!',
      time: '7:00 AM',
      imageUrl: '(link unavailable)',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
      ),
      body: ListView.builder(
        itemCount: _chats.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(_chats[index].imageUrl),
            ),
            title: Text(_chats[index].name),
            subtitle: Text(_chats[index].message),
            trailing: Text(_chats[index].time),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatDetailScreen(
                    name: _chats[index].name,
                    imageUrl: _chats[index].imageUrl,
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
    );
  }
}

class ChatDetailScreen extends StatelessWidget {
  final String name;
  final String imageUrl;

  const ChatDetailScreen({
    required this.name,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: ListView(
        children: const [
          // Chat messages
          ListTile(
            title: Text('Hello! How are you?'),
          ),
          ListTile(
            title: Text('I am good, thanks!'),
          ),
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
              onPressed: () {},
              icon: const Icon(Icons.send),
            ),
          ],
        ),
      ),
    );
  }
}
