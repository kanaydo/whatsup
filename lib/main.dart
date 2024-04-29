import 'package:flutter/material.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FlutterLogo(size: 60,),
          FlutterLogo(size: 100,),
          FlutterLogo(size: 60,),
          FlutterLogo(size: 150,),
          FlutterLogo(size: 150,),
          // FlutterLogo(size: 150,),
          // FlutterLogo(size: 150,),
          // FlutterLogo(size: 150,),
          // FlutterLogo(size: 150,),
          // FlutterLogo(size: 150,),
          // FlutterLogo(size: 150,),
          // FlutterLogo(size: 150,),
          // FlutterLogo(size: 150,),
        ],
      ),
    );
  }
}