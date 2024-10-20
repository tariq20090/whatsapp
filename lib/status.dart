// ignore_for_file: unused_local_variable
import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? _status;
    var scaffold = Scaffold(
      appBar: AppBar(
        title: const Text('Status'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('My Status'),
            subtitle: const Text('Tap to add status'),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  final TextEditingController _statusController =
                      TextEditingController();
                  return AlertDialog(
                    title: const Text('Add Status'),
                    content: TextField(
                      controller: _statusController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Type your status',
                      ),
                      maxLines: 5,
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
                          _status = _statusController.text;
                          if (_status != null && _status!.isNotEmpty) {
                            print(_status);
                          } else {
                            print("Status cannot be empty");
                          }
                          Navigator.pop(context);
                        },
                        child: const Text('Add'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Viewed Updates'),
            subtitle: const Text('See all updates'),
            onTap: () {
              
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Recent Updates'),
            subtitle: const Text('See recent updates'),
            onTap: () {
            
            },
          ),
        ],
      ),
    );
    return scaffold;
  }
}
