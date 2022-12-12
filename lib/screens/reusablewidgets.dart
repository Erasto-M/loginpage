import 'package:flutter/material.dart';
Widget Textfield(String text, icon,bool isPasswordType){
  return TextField(
    keyboardType: TextInputType.text,
    obscureText: isPasswordType,
    showCursor: isPasswordType,
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
        fontSize: 25,
        color: Colors.blue),
  );
}
Widget button(){
  return Container(
    width: double.infinity,
    child: RawMaterialButton(
      fillColor: Colors.green,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onPressed: (){},
      child:Showtext("LOGIN",),
    ),
  );
}
Widget Space(){
  return SizedBox(
    height: 15,
    width: 15,
  );
}