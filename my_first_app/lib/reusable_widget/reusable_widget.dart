import 'package:flutter/material.dart';

Container signInSignUpButton(
  BuildContext context, bool isLogin, Function onTap) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        onPressed: () {
          onTap();
          
        },
        child: Text(
          isLogin ? 'LOG IN' : 'SIGN UP',
          style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          style: ButtonStyle(
            backgroundColor: WidgetStateColor.resolveWith((states) {
              if (states.contains(WidgetState.pressed)) {
                return Colors.black26;
              }
              return Colors.white;
            }),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
            )
          ),
        ),
    );
  }