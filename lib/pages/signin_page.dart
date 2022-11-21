import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: widget.userNameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: widget.passwordController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  prefixIcon: Icon(
                    Icons.key,
                    color: Colors.blue,
                  )),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (widget.passwordController.text.toString() == "12345") {
                  context.go("/authed", extra: widget.userNameController.text);
                } else {
                  print("sorry");
                }
              },
              child: Text("Sign In"))
        ],
      ),
    );
  }
}

void authenticate(String checker) {}
