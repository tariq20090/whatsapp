import 'package:flutter/material.dart';
import 'status.dart';

import 'calls.dart';
import 'chats.dart';
import 'contacts.dart';
import 'update.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const WhatsAppHome(),
    );
  }
}

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatsScreen()),
          );
        },
        child: const Icon(Icons.message),
      ),
    );
  }
}

class WhatsAppDrawer extends StatelessWidget {
  const WhatsAppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Mubashir'),
            accountEmail: const Text('Mubashir@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/bmw.jpeg'),
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
            leading: const Icon(Icons.update),
            title: const Text('Update'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UpdateScreen()),
              );
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
  const WhatsAppChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/car2.jpeg')),
          title: const Text('Muzzamil'),
          subtitle: const Text('How are you?'),
          trailing: const Text('12:00 PM'),
        ),
        ListTile(
          leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/car.jpeg')),
          title: const Text('Mubashir'),
          subtitle: const Text('I am good, thanks!'),
          trailing: const Text('11:45 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://upload.wikimedia.org/wikipedia/commons/a/a8/Shahid_Afridi_in_2017.jpg"),
          ),
          title: const Text('Tariq'),
          subtitle: const Text('Call me later'),
          trailing: const Text('10:00 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/a/a8/Shahid_Afridi_in_2017.jpg',
            ),
          ),
          title: const Text('Hmaza'),
          subtitle: const Text('I will call you'),
          trailing: const Text('9:30 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/audi.jpeg')),
          title: const Text('Anwer'),
          subtitle: const Text('Okay, see you later'),
          trailing: const Text('1:00 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/audi.jpeg')),
          title: const Text('Ameen'),
          subtitle: const Text('Okay, see you later'),
          trailing: const Text('12:00 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/a/a8/Shahid_Afridi_in_2017.jpg',
            ),
          ),
          title: const Text('Jameel'),
          subtitle: const Text('Okay, see you later'),
          trailing: const Text('7:00 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
              backgroundColor: Colors.pink,
              backgroundImage: NetworkImage('assets/images/audi.jpeg')),
          title: const Text('Noman'),
          subtitle: const Text('Okay, see you later'),
          trailing: const Text('9:00 AM'),
        ),
        ListTile(
          leading: CircleAvatar(
              backgroundColor: Colors.lightBlue,
              backgroundImage: NetworkImage('assets/images/car2.jpeg')),
          title: const Text('Khalid'),
          subtitle: const Text('Okay, see you later'),
          trailing: const Text('12:00 AM'),
        ),
      ],
    );
  }
}
