import 'package:flutter/material.dart';
import 'package:loginpage/screens/reusablewidgets.dart';
import 'package:loginpage/screens/sign_in.dart';
import 'package:loginpage/screens/sign_up.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("Welcome to This App", style: TextStyle(
                    color: Colors.black,fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
                  Space(),
                  Showtext("Register for the First Time"),
                  Space(),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                      },
                      child: Text("Register"),
                    ),
                  ),
                  Space(),

                  Showtext("Login if already Registered"),
                  Space(),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));
                      },
                      child: Text("Sign-In"),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
