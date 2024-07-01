import 'package:flutter/material.dart';
import 'package:whatsup/main.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: usernameController,
            decoration: InputDecoration(
              label: Text('username')
            ),
          ),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
                label: Text('password')
            ),
          ),
          ElevatedButton(
              onPressed: () async {

                setState(() {
                  isLoading = true;
                });

                await Future.delayed(Duration(seconds: 2));

                String username = usernameController.text;
                String password = passwordController.text;

                // password absen: pertemuan15

                if (username == 'admin' && password == 'admin') {
                  // benar
                  final snackBar = SnackBar(
                    backgroundColor: Colors.green,
                    content: Text('Berhasil Login')
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage()
                      )
                  );
                } else {
                  // salah
                  final snackBar = SnackBar(
                      backgroundColor: Colors.red,
                      content: Text('Username dan password salah')
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }

                setState(() {
                  isLoading = false;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  isLoading ? SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(),
                  ) : Container(),

                  SizedBox(width: 8,),
                  Text('login'),
                ],
              )
          )
        ],
      ),
    );
  }
}
