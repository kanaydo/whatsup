import 'package:flutter/material.dart';
import 'package:whatsup/chat_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final chats = [
   ChatItemData(pengirim: 'Tony Stark', pesan: 'Hello', waktu: '12:20'),
   ChatItemData(pengirim: 'Bruce Banner', pesan: 'Makan yuk', waktu: '18:20'),
   ChatItemData(pengirim: 'Steve Rogers', pesan: 'Pinjam Dulu 100', waktu: '08:00')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade50,
        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
            final data = chats.elementAt(index);
            return ChatItem(data: data);
          },
        ),
      ),
    );
  }
}