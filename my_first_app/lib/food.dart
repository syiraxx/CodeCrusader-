import 'package:flutter/material.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Receive Help Section'),
        leading: BackButton(onPressed: () => Navigator.pop<Object>(context)),
      ),
      backgroundColor: const Color.fromARGB(255, 188, 157, 241),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10), // Adds space between links

            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white, // Set your desired background color
                border: Border.all(color: Colors.grey), // Optional border
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(8.0), // Adjust padding as needed
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Nasi Putih + Masak Lemak\nQuantity : 25\nPick Up Address : 123 Abc',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          child: const Text('Need Help?'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Blank()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 40),
                            backgroundColor: const Color(0xFF6846C4),
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      Text("as of 11.30am, 31 Oct 2024"),
                    ],
                  ),
                  SizedBox(height: 1),
                ],
              ),
            ),

            SizedBox(height: 1), // Adds space between links

            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white, // Set your desired background color
                border: Border.all(color: Colors.grey), // Optional border
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(8.0), // Adjust padding as needed
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'White Rice (5kg)\nQuantity : 13\nPick Up Address : Restoran Abuya',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          child: const Text('Need Help?'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Blank()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 40),
                            backgroundColor: const Color(0xFF6846C4),
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      Text("as of 8.10am, 31 Oct 2024"),
                    ],
                  ),
                  SizedBox(height: 1),
                ],
              ),
            ),

            SizedBox(height: 1), // Adds space between links

            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white, // Set your desired background color
                border: Border.all(color: Colors.grey), // Optional border
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(8.0), // Adjust padding as needed
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Cooking Oil, Salt\nQuantity : 2, 4\nPick Up Address : Masjid Saidina Ali',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          child: const Text('Need Help?'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Blank()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 40),
                            backgroundColor: const Color(0xFF6846C4),
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      Text("as of 10.00am, 30 Oct 2024"),
                    ],
                  ),
                  SizedBox(height: 1),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white, // Set your desired background color
                border: Border.all(color: Colors.grey), // Optional border
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(8.0), // Adjust padding as needed
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Mee Goreng\nQuantity : 10\nPick Up Address : Restoran Itu',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          child: const Text('Need Help?'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Blank()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 40),
                            backgroundColor: const Color(0xFF6846C4),
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      Text("as of 3.45pm, 30 Oct 2024"),
                    ],
                  ),
                  SizedBox(height: 1),
                ],
              ),
            ),

            SizedBox(height: 1), // Adds space between links

            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white, // Set your desired background color
                border: Border.all(color: Colors.grey), // Optional border
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(8.0), // Adjust padding as needed
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Canned Goods\nQuantity : 25\nPick Up Address : AgroFoodBank',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          child: const Text('Need Help?'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Blank()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 40),
                            backgroundColor: const Color(0xFF6846C4),
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      Text("as of 4.00pm, 29 Oct 2024"),
                    ],
                  ),
                  SizedBox(height: 1),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

class Blank extends StatelessWidget {
  const Blank({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Pick Up'),
        leading: BackButton(onPressed: () => Navigator.pop<Object>(context)),
      ),
      backgroundColor: Colors.deepPurple,
    );
  }
}
