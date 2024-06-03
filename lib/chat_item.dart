import 'package:flutter/material.dart';



class ChatItemData {
  final String pengirim;
  final String pesan;
  final String waktu;

  ChatItemData({
    required this.pengirim,
    required this.pesan,
    required this.waktu
  });
}




class ChatItem extends StatelessWidget {
  final ChatItemData data;

  const ChatItem({super.key, required this.data});

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
              Text(data.pengirim),
              Row(
                children: [
                  Icon(Icons.check, color: Colors.blue,),
                  Text(data.pesan),
                ],
              )
            ],
          ),
        ),
        SizedBox(width: 8,),
        Text(data.waktu),
      ],
    );
  }
}
