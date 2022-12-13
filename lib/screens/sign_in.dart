import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/screens/reusablewidgets.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:loginpage/screens/sign_up.dart';
import 'package:loginpage/screens/welcome_screen.dart';
class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Showtext("Login To Your App"),
                    Textfield("user Email",Icon(Icons.email),false,emailcontroller),
                    Space(),
                    Textfield("Password", Icon(Icons.lock),true,passwordcontroller),
                    Space(),
                    Space(),
                    button("LOGIN", () async{
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: emailcontroller.text,
                          password: passwordcontroller.text);
                      setState(() {

                      });
                    }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Showtext("Don't have an Account?"),
                        Space(),
                        ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                            }, child: Text("SignUp")),
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
          )),
    );
  }
}
