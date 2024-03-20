import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileScreen());
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tuiterr'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Aksi ketika tombol back ditekan
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Aksi ketika tombol pencarian ditekan
              },
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(
                    value: 'settings',
                    child: Text('Settings'),
                  ),
                  const PopupMenuItem(
                    value: 'logout',
                    child: Text('Logout'),
                  ),
                ];
              },
              onSelected: (value) {
                // Aksi ketika salah satu opsi dipilih
                if (value == 'settings') {
                  // Lakukan sesuatu ketika opsi settings dipilih
                } else if (value == 'logout') {
                  // Lakukan sesuatu ketika opsi logout dipilih
                }
              },
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200.0,
              color: Colors.blue,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/162/2024/01/20/UPN-Jatim-1325604470.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Positioned(
                    left: 20.0,
                    top:
                        140.0, // Adjust this value to position the profile image vertically
                    child: ClipOval(
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/id/thumb/1/12/Logo_UPN_Veteran_Jawa_Timur.png/300px-Logo_UPN_Veteran_Jawa_Timur.png'),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20.0,
                    right: 20.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Follow'),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'UPN VETERAN JAWA TIMUR',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '@upnvjt',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  SizedBox(height: 10.0),
                  Text(
                    'Tweet 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    'Tweet 2: Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
