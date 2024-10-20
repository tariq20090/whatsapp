import 'package:flutter/material.dart';
import 'status.dart';

import 'calls.dart';
import 'chats.dart';
import 'contacts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const WhatsAppHome(),
    );
  }
}

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({super.key});

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const WhatsAppDrawer(),
      body: const WhatsAppChatList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
    );
  }
}

class WhatsAppDrawer extends StatelessWidget {
  const WhatsAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Mubashir'),
            accountEmail: Text('Mubashir@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.green,
              backgroundImage: NetworkImage(''
,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.chat),
            title: const Text('Chats'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatsScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('Calls'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CallsScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Contacts'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactsScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.circle),
            title: const Text('Status'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StatusScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class WhatsAppChatList extends StatelessWidget {
  const WhatsAppChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(
              'https://i.pinimg.com/736x/40/5d/98/405d983f3c0e05c582c391112069fa8b.jpg',
            ),
          ),
          title: Text('Muzzamil'),
          subtitle: Text('How are you?'),
          trailing: Text('12:00 PM'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            backgroundImage: NetworkImage(
              '(link unavailable)',
            ),
          ),
          title: Text('Mubashir'),
          subtitle: Text('I am good, thanks!'),
          trailing: Text('11:45 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.purple,
            backgroundImage: NetworkImage(
              '(link unavailable)',
            ),
          ),
          title: Text('Tariq'),
          subtitle: Text('Call me later'),
          trailing: Text('10:00 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.red,
            backgroundImage: NetworkImage(
              '(link unavailable)',
            ),
          ),
          title: Text('Hmaza'),
          subtitle: Text('I will call you'),
          trailing: Text('9:30 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.yellow,
            backgroundImage: NetworkImage(
              '(link unavailable)',
            ),
          ),
          title: Text('Anwer'),
          subtitle: Text('Okay, see you later'),
          trailing: Text('1:00 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(
              '(link unavailable)',
            ),
          ),
          title: Text('Ameen'),
          subtitle: Text('Okay, see you later'),
          trailing: Text('12:00 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            backgroundImage: NetworkImage(
              '(link unavailable)',
            ),
          ),
          title: Text('Jameel'),
          subtitle: Text('Okay, see you later'),
          trailing: Text('7:00 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.pink,
            backgroundImage: NetworkImage(
              '(link unavailable)',
            ),
          ),
          title: Text('Noman'),
          subtitle: Text('Okay, see you later'),
          trailing: Text('9:00 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.lightBlue,
            backgroundImage: NetworkImage(
              '(link unavailable)',
            ),
          ),
          title: Text('Khalid'),
          subtitle: Text('Okay, see you later'),
          trailing: Text('12:00 AM'),
        ),
      ],
    );
  }
}
