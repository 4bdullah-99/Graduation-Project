import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'authmethod.dart';

TextField TF(
    String text, IconData icon, bool pass, TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: pass,
    autocorrect: !pass,
    enableSuggestions: !pass,
    cursorColor: Colors.white,
    style:
        TextStyle(fontFamily: 'Gugi', color: Colors.white70.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(icon, color: const Color.fromRGBO(160, 229, 248, 50)),
      labelText: text,
      labelStyle: const TextStyle(color: Color.fromRGBO(160, 229, 248, 50)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: const Color.fromRGBO(3, 71, 72, 50),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType:
        pass ? TextInputType.visiblePassword : TextInputType.emailAddress,
  );
}

Container SignButton(BuildContext context, bool isLogin, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.06,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        isLogin ? 'LOG IN' : 'SIGN UP',
        style: const TextStyle(
            color: Color.fromRGBO(160, 229, 248, 100),
            fontFamily: 'Gugi',
            fontWeight: FontWeight.bold,
            fontSize: 16),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Color.fromRGBO(3, 71, 72, 10);
            }
            return Color.fromRGBO(3, 71, 72, 100);
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
    ),
  );
}

Container signinmethod(BuildContext context, String iamgepath) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.1,
    width: MediaQuery.of(context).size.width * 0.2,
    decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage(iamgepath), fit: BoxFit.contain)),
  );
}
