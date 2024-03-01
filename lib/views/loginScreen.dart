// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              'Fire',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 231, 91, 9)),
            )),
            
          ],
        ),
      ),
    );
  }
}
