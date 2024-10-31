import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:my_first_app/Setting.dart';
import 'package:my_first_app/tuto.dart';
import 'package:url_launcher/link.dart';

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('News and Events'),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 147, 217),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20), // Adds space between links

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
                    child: Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse(
                          'https://www.wfp.org/news/new-gaza-food-security-assessment-sees-famine-risk-persisting-amid-ongoing-fighting-and'),
                      builder: (context, followLink) => MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: followLink,
                          child: Text(
                            'New Gaza food security assessment sees famine risk persisting amid ongoing fighting and restricted aid operations',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Image.asset(
                      'images/pic1.jpg',
                      width: MediaQuery.of(context).size.width * 0.9,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 9),
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
                    child: Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse(
                          'https://thesun.my/malaysia-news/ngo-rescues-lost-food-to-feed-the-hungry-BH10710661'),
                      builder: (context, followLink) => MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: followLink,
                          child: Text(
                            'NGO rescues lost food to feed the hungry',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Image.asset(
                      'images/pic2.jpg',
                      width: MediaQuery.of(context).size.width * 0.9,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 9),
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
                    child: Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse(
                          'https://www.thestar.com.my/metro/metro-news/2024/09/18/ngos-famine-festival-in-bukit-jalil-draws-thousands'),
                      builder: (context, followLink) => MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: followLink,
                          child: Text(
                            'NGO’s famine festival in Bukit Jalil draws thousands',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Image.asset(
                      'images/pic3.jpg',
                      width: MediaQuery.of(context).size.width * 0.9,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 9),
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
                    child: Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse(
                          'https://greenly.earth/en-us/blog/ecology-news/global-food-waste-in-2022'),
                      builder: (context, followLink) => MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: followLink,
                          child: Text(
                            'Global Food Waste in 2024',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Image.asset(
                      'images/pic4.jpg',
                      width: MediaQuery.of(context).size.width * 0.9,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          color: Colors.deepPurple.shade200,
          backgroundColor: const Color.fromARGB(255, 255, 147, 217),
          animationDuration: Duration(milliseconds: 20),
          items: [
            IconButton(
              iconSize: 30,
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),
            Icon(Icons.calendar_month),
            IconButton(
              iconSize: 30,
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FourthRoute()),
                );
              },
            ),
          ]),
    );
  }
}
