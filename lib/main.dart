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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // hello

  // hello lagi

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade50,
        child: Column(
          children: [
            ChatItem(),
            ChatItem(),
            ChatItem(),
            ChatItem(),
            ChatItem(),
            ChatItem(),
            ChatItem(),
            ChatItem(),
            ChatItem(),
          ],
        ),
      ),
    );
  }
}