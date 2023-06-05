import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String word = "";
  String name = "";
  String password = "";

  void changeName(String text) {
    name = text;
  }

  void changePassword(String text) {
    password = text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login page"),
      ),
      body: Center(
          child: Column(
        children: [
          Text(word),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Column(
              children: [
                TextFormField(
                  onChanged: (value) {
                    changeName(value);
                  },
                  decoration: const InputDecoration(hintText: "Enter Email"),
                ),
                TextFormField(
                  onChanged: (password) {
                    changePassword(password);
                  },
                  obscureText: true,
                  decoration: const InputDecoration(hintText: "Enter Password"),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                word = "$name  & $password";
                setState(() {});
              },
              child: const Text("Login"))
        ],
      )),
    );
  }
}
