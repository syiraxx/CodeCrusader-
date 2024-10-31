import 'package:flutter/material.dart';
import 'package:my_first_app/receiver.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Profile'),
        ),
      body: Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Column(
            children: [
              SizedBox(height: 30),

              const Text("Receiver Information", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,                
                children: <Widget>[
                  //const SizedBox(width: 295, height: 100),
                  ElevatedButton(
                    child: Text("Fill"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ReceiverInfo()),
                      );
                    },                    
                  ),
                ],
              ),            
            ],
          ),
      ),
    );
  }
}