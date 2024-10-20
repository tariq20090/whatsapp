import 'package:flutter/material.dart';

class Contact {
  final String name;
  final String phoneNumber;

  Contact({required this.name, required this.phoneNumber});
}

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  final List<Contact> _contacts = [
    Contact(name: 'Muzzamil', phoneNumber: '1234567890'),
    Contact(name: 'Mubashir', phoneNumber: '9876543210'),
    Contact(name: 'Tariq', phoneNumber: '5551234567'),
    Contact(name: 'Hamza', phoneNumber: '9012345678'),
  ];

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: _contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_contacts[index].name),
            subtitle: Text(_contacts[index].phoneNumber),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Add New Contact'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Name',
                      ),
                      controller: _nameController,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Phone Number',
                      ),
                      controller: _phoneNumberController,
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _contacts.add(Contact(
                          name: _nameController.text,
                          phoneNumber: _phoneNumberController.text,
                        ));
                      });
                      _nameController.clear();
                      _phoneNumberController.clear();
                      Navigator.pop(context);
                    },
                    child: const Text('Add'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.person_add),
      ),
    );
  }
}
