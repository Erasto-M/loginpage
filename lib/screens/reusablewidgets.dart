import 'package:flutter/material.dart';
Widget Textfield(String text, icon,bool isPasswordType, TextEditingController controller){
  return TextField(
    controller: controller,
    keyboardType: TextInputType.text,
    obscureText: isPasswordType,
    //showCursor: isPasswordType,
    decoration: InputDecoration(
      hintText: text,
      hintStyle: TextStyle(
          color: Colors.black87,
          fontSize: 15,
          fontWeight: FontWeight.normal,
      ),
      prefixIcon: icon,
    ),
  );
}
Widget Showtext(String text){
  return Text(
    text,
    style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.blue),
  );
}
Widget button(String text,Function() function){
  return Container(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: function,
      child:Showtext(text),
    ),
  );
}
Widget Space(){
  return SizedBox(
    height: 15,
    width: 15,
  );
}