// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:fire/views/pages/homePage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fire/widgets/form_widget.dart';
import 'package:fire/models/firebase_auth/firebase_auth.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  final FirebaseAuthenthication auth = FirebaseAuthenthication();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Center(
                child: Text(
              'Fire',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 231, 91, 9)),
            )),
            FormContainerWidget(
              controller: _usernameController,
              hintText: 'username',
              isPasswordField: false,
            ),
            FormContainerWidget(
              controller: _emailController,
              hintText: 'email',
              isPasswordField: false,
            ),
            FormContainerWidget(
              controller: _passwordController,
              hintText: 'password',
              isPasswordField: true,
            ),
            ElevatedButton(onPressed: _singUp, child: const Text("Sing Up"))
          ],
        ),
      ),
    );
  }

  // ignore: unused_element
  void _singUp() async {
    String username = _usernameController.text;
    String email = _passwordController.text;
    String password = _passwordController.text;

    User? user = await auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      if (kDebugMode) {
        print('Successfuly');
        Get.to(const Home());
      } else {
        if (kDebugMode) {
          print('Error');
        }
      }
    }
  }
}
