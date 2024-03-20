import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Demo",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Card"),
          ),
          body: const MyHomePage(),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
            onTap: () {},
            leading: Image.network(
                'https://akcdn.detik.net.id/visual/2021/07/08/manfaat-mendengarkan-musik-untuk-kesehatan-foto-freepik-benzoix_169.jpeg?w=700&q=90'),
            trailing: const Icon(Icons.more_vert),
            title: const Text('Adelia Putri P'),
            subtitle: const Text("Hobi Mendengarkan Musik"),
            tileColor: Colors.white70));
  }
}
