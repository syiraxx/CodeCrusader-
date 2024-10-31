import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/login.dart';
import 'package:my_first_app/reusable_widget/reusable_widget.dart';
import 'package:my_first_app/tuto.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? username, email, password;

  TextEditingController _userNameTextController = new TextEditingController();
  TextEditingController _emailTextController = new TextEditingController();
  TextEditingController _passwordTextController = new TextEditingController();

  final _formkey = GlobalKey<FormState>();

  registration() async {
    if (password != null && username != null && email != null) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email!, password: password!);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Registered successfully.",
                style: TextStyle(fontSize: 20.0))));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Password is too weak.",
                  style: TextStyle(fontSize: 20.0))));
        } else if (e.code == "email-already-in-use") {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Account already exists.",
                  style: TextStyle(fontSize: 20.0))));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: const Text(
            "Sign Up",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.only(top: 200.0),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Text(
                    "Username",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 12),

                  TextFormField(
                    controller: _userNameTextController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_outlined),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        labelText: 'Enter Username'),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Text(
                    "Email",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 12),

                  TextFormField(
                    controller: _emailTextController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter email address';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_outlined),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        labelText: 'Enter Email'),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Text(
                    "Password",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 12),

                  TextFormField(
                    controller: _passwordTextController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        labelText: 'Enter Password'),
                    obscureText: true,
                  ),

                  SizedBox(height: 20),

                  // GestureDetector(
                  //   onTap: () {
                  // if(_formkey.currentState!.validate()) {
                  //   setState(() {
                  //     email = _emailTextController.text;
                  //     username = _userNameTextController.text;
                  //     password = _passwordTextController.text;
                  //   });
                  // }
                  //     registration();
                  //   },
                  // ),

                  signInSignUpButton(context, false, () {
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        email = _emailTextController.text;
                        username = _userNameTextController.text;
                        password = _passwordTextController.text;
                      });
                      registration();
                    }
                    // FirebaseAuth.instance.createUserWithEmailAndPassword(
                    //   email: _emailTextController.text,
                    //   password: _passwordTextController.text)
                    //   .then((value) {
                    //     print("Created New Account");
                    //  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    // }).onError((error, stackTrace) {
                    //   print("Error ${error.toString()}");
                    // });
                  }),

                  loginOption()
                ],
              ),
            ),
          ),
        ));
  }

  Row loginOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Already have an account?",
            style: TextStyle(color: Colors.grey)),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => TutoScreen()));
          },
          child: const Text(
            " Log In",
            style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
