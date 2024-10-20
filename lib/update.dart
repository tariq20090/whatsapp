import 'package:flutter/material.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Status'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 100, // Height of the horizontal list
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildAvatar(context, 'assets/images/audi.jpeg', 'User 1'),
              _buildAvatar(context, 'assets/images/bmw.jpeg', 'User 2'),
              _buildAvatar(context, 'assets/images/audi.jpeg', 'User 3'),
              _buildAvatar(context, 'assets/images/bmw.jpeg', 'User 4'),
              _buildAvatar(context, 'assets/images/audi.jpeg', 'User 2'),
              _buildAvatar(context, 'assets/images/car.jpeg', 'User 3'),
              _buildAvatar(context, 'assets/images/audi.jpeg', 'User 1'),
              _buildAvatar(context, 'assets/images/car2.jpeg', 'User 2'),
              _buildAvatar(context, 'assets/images/car.jpeg', 'User 3'),
              _buildAvatar(context, 'assets/images/audi.jpeg', 'User 1'),
              _buildAvatar(context, 'assets/images/bmw.jpeg', 'User 2'),
              _buildAvatar(context, 'assets/images/car.jpeg', 'User 3'),
              _buildAvatar(context, 'assets/images/bmw.jpeg', 'User 1'),
              _buildAvatar(context, 'assets/images/audi.jpeg', 'User 2'),
              _buildAvatar(context, 'assets/images/car2.jpeg', 'User 3'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAvatar(BuildContext context, String imagePath, String userName) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ImageViewScreen(imagePath: imagePath, userName: userName),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imagePath),
              radius: 30,
            ),
            const SizedBox(height: 5),
            Text(
              userName,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageViewScreen extends StatelessWidget {
  final String imagePath;
  final String userName;

  const ImageViewScreen(
      {super.key, required this.imagePath, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userName),
      ),
      body: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}
