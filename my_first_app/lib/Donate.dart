import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class donatepage extends StatefulWidget {
  const donatepage({super.key});

  @override
  State<donatepage> createState() => SecondRoute();
}

class SecondRoute extends State<donatepage> {
  TextEditingController fullnamecontroller = new TextEditingController();
  TextEditingController phonenocontroller = new TextEditingController();
  TextEditingController foodtypecontroller = new TextEditingController();
  TextEditingController quantitycontroller = new TextEditingController();

  late DatabaseReference dbRef;

  List<bool> isSelected = [false, false];
  // const SecondRoute({super.key});
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> submitDonorData() async {
    final url =
        'https://your-project-id.cloudfunctions.net/your-data-connect-function'; // Replace with your function URL
    final body = {
      'name': fullnamecontroller.text,
      'phoneno': phonenocontroller.text,
      'foodtype': foodtypecontroller.text,
      'quantity': quantitycontroller.text,
    };

    final response = await http.post(Uri.parse(url), body: body);

    if (response.statusCode == 200) {
      // Data successfully submitted
      print('Data submitted successfully!');
    } else {
      // Handle error
      print('Error submitting data: ${response.statusCode}');
    }
  }

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('Donors');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donate Section'),
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(children: [
                Text("Full name",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                TextFormField(
                  controller: fullnamecontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                      filled: true,
                      fillColor: Colors.white),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Your Name';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Contact Number",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                TextFormField(
                  controller: phonenocontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Number',
                      filled: true,
                      fillColor: Colors.white),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your contact number';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Donation Type",
                    style: TextStyle(fontSize: 23, color: Colors.white)),
                ToggleButtons(
                  borderWidth: 8,
                  color: Colors.white,
                  borderColor: Colors.white,
                  fillColor: Colors.white,
                  selectedColor: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                  selectedBorderColor: Colors.green,
                  children: const [
                    Icon(Icons.food_bank_sharp),
                    Icon(Icons.monetization_on),
                  ],
                  onPressed: (int index) {
                    setState(() {
                      isSelected[index] = !isSelected[index];
                    });
                  },
                  isSelected: isSelected,
                ),
                Text("   Food  Money",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                SizedBox(
                  height: 20,
                ),
                Text("Food Type",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                TextField(
                  controller: foodtypecontroller,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      labelText: 'put "-" if doesnt include food'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Quantity",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                TextField(
                  controller: quantitycontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      labelText: 'put "-" if doesnt include food'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Cash amount",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                TextField(
                    decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  labelText: 'put "-" if doesnt include cash',
                )),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    submitDonorData();
                    // Map<String, String> donors = {
                    //   'name' : fullnamecontroller.text,
                    //   'phoneno' : phonenocontroller.text,
                    //   'foodtype' : foodtypecontroller.text,
                    //   'quantity' : quantitycontroller.text
                    // };

                    //dbRef.push().set(donors);

                    // if (formKey.currentState!.validate()) {
                    //   print('The form is successfully validated.');
                    // }
                    // print('error');
                  },
                  child: Text('Submit',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(Colors.deepPurple)),
                ),
              ]))),
      backgroundColor: Colors.purple,
    );
  }
}
