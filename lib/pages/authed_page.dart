import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_navigation_signin/pages/signin_page.dart';

class Congrats extends StatelessWidget {
  Congrats({super.key, required this.user});

  final String user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome")),
      body: ListView(
        children: [
          Container(
            child: Center(
              child: Text("Hello $user"),
            ),
          )
        ],
      ),
    );
  }
}
