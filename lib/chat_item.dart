import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FlutterLogo(),
        SizedBox(width: 8,),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Bayu Angga Wijaya'),
              Row(
                children: [
                  Icon(Icons.check, color: Colors.blue,),
                  Text('okee'),
                ],
              )
            ],
          ),
        ),
        SizedBox(width: 8,),
        Text('yesterday'),
      ],
    );
  }
}
