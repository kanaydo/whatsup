import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
              onPressed: () {
                String username = usernameController.text;
                String password = passwordController.text;

                // password absen: password

                if (username == 'admin' && password == 'admin') {
                  // benar
                  final snackBar = SnackBar(
                    backgroundColor: Colors.green,
                    content: Text('Berhasil Login')
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } else {
                  // salah
                  final snackBar = SnackBar(
                      backgroundColor: Colors.red,
                      content: Text('Username dan password salah')
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }


              },
              child: Text('login')
          )
        ],
      ),
    );
  }
}
