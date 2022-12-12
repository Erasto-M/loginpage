import 'package:flutter/material.dart';
import 'package:loginpage/screens/reusablewidgets.dart';
import 'package:firebase_core/firebase_core.dart';
class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Showtext("Login To Your App"),
              Textfield("user Email",Icon(Icons.email),false),
              Space(),
              Textfield("Password", Icon(Icons.lock),true),
              Space(),
              Showtext("Don't remember password?"),
              Space(),
              Space(),
              button(),
            ],
          ),
        ));
  }
}
