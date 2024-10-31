import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/Donate.dart';
import 'package:my_first_app/Event.dart';
import 'package:my_first_app/Profile.dart';
import 'package:my_first_app/Setting.dart';
import 'package:my_first_app/food.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Home Page '),
        ),
        backgroundColor: Colors.deepPurple,
        bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.deepPurple,
            color: Colors.deepPurple.shade200,
            animationDuration: Duration(milliseconds: 20),
            items: [
              Icon(Icons.home),
              IconButton(
                iconSize: 30,
                icon: const Icon(Icons.calendar_month),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ThirdRoute()),
                  );
                },
              ),
              IconButton(
                iconSize: 30,
                icon: const Icon(Icons.settings),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FourthRoute()),
                  );
                },
              ),
            ]),
        body: Padding(
            padding: EdgeInsets.all(8),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  const Text.rich(
                    TextSpan(
                      text: 'WELCOME  TO  ', // default text style
                      style: TextStyle(fontSize: 22, color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'iDONATE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Color.fromARGB(255, 212, 255, 0),
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(width: 25, height: 10),
                  IconButton.filled(
                    icon: Icon(Icons.person),
                    color: Colors.white,
                    iconSize: 50,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    },
                  )
                  /*FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                    child: const Icon(Icons.person),
                  ),*/
                ],
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      255, 243, 139, 255), // Set your desired background color
                  border: Border.all(color: Colors.grey), // Optional border
                  borderRadius: BorderRadius.circular(8.0),
                ),

                padding: const EdgeInsets.all(8.0), // Adjust padding as needed
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.star),
                      color: Colors.yellow,
                      iconSize: 40,
                      alignment: Alignment.topLeft,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                        child: const Text('Donate'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => donatepage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(200, 50),
                          foregroundColor:
                              Colors.black, //change background color of button
                          backgroundColor: Colors.white,
                        )),
                    const SizedBox(
                      height: 60,
                      width: 10000,
                    ),
                    ElevatedButton(
                        child: const Text('Receive Help'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Food()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(200, 50),
                          foregroundColor:
                              Colors.black, //change background color of button
                          backgroundColor: Colors.white,
                        )),
                    const SizedBox(
                      height: 50,
                      width: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset(
                        'images/pic5.jpg',
                        width: MediaQuery.of(context).size.width * 8.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    )
                  ],
                ),
              )
            ])));
  }
}
