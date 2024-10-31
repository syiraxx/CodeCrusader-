import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/reusable_widget/reusable_widget.dart';
import 'package:my_first_app/signin.dart';
import 'package:my_first_app/tuto.dart';

class TutoScreen extends StatefulWidget {
  const TutoScreen({super.key});

  @override
  State<TutoScreen> createState() => _TutoScreenState();
}

class _TutoScreenState extends State<TutoScreen> {
  String? email, password;

  TextEditingController _emailTextController = new TextEditingController();
  TextEditingController _passwordTextController = new TextEditingController();

  final _formkey = GlobalKey<FormState>();

  userLogin() async {
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email!, password: password!);
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    } on FirebaseAuthException catch (e) {
      if(e.code == 'user-not-found') {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar
      (content: 
      Text("No user found for that email address.", 
      style: TextStyle(fontSize: 10.0, color: Colors.black))));
      }
      else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar
      (content: 
      Text("Wrong password provided by user.", 
      style: TextStyle(fontSize: 10.0, color: Colors.black))));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,        
        title: const Text("Log In", 
        style: TextStyle(
          fontSize: 24, 
          fontWeight: FontWeight.bold),
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
                Text("Email", 
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
                    
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
                    
                SizedBox(height: 20,),
                    
                Text("Password", 
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
                    
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
                    
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password?",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      
                    ),
                    ),
                  ],
                ),
                    
                SizedBox(height: 20),
                    
                signInSignUpButton(context, true, () {
                  if(_formkey.currentState!.validate()) {
                    setState(() {
                      email = _emailTextController.text;
                      password = _passwordTextController.text;
                    });
                    userLogin();
                  }
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));                  
                    }
                  ),
                  signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?",
        style: TextStyle(color: Colors.grey)),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
