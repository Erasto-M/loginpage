import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/screens/reusablewidgets.dart';
import 'package:loginpage/screens/sign_in.dart';
import 'package:loginpage/screens/welcome_screen.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    User? user= FirebaseAuth.instance.currentUser;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Showtext("Please Register"),
                  Space(),
                  Textfield("User Email", Icon(Icons.email), false,emailcontroller),
                  Space(),
                  Textfield("password", Icon(Icons.lock), true,passwordcontroller),
                  Space(),
                  button("Sign-Up", () async{
                   await FirebaseAuth.instance.createUserWithEmailAndPassword(
                       email: emailcontroller.text,
                       password: passwordcontroller.text);
                   setState(() {

                   });
                  }),
                  Row(
                    children: [
                      Showtext("Already have an Account?"),
                      Space(),
                      ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));
                          }, child: Text("Login")),
                    ],
                  ),
                  Space(),
                  Space(),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async{
                        await FirebaseAuth.instance.signOut();
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      child: Text("LogOut"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
