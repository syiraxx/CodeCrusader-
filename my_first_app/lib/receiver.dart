import 'package:flutter/material.dart';

class ReceiverInfo extends StatefulWidget {
  const ReceiverInfo({super.key});

  @override
  State<ReceiverInfo> createState() => _ReceiverInfoState();
}

class _ReceiverInfoState extends State<ReceiverInfo> {
  _ReceiverInfoState() {
    selectedValue = gender[0];
    _selectedValue = race[0];
    SelectedValue = marital[0];
  }

  GlobalKey<FormState> FormKey = GlobalKey<FormState>();

  final gender = ['Male', 'Female'];
  final race = ['Malay', 'Indian', 'Chinese', 'Bumiputera'];
  final marital = ['Single', 'Married', 'Duda', 'Janda'];

  String? selectedValue = "";
  String? _selectedValue = "";
  String? SelectedValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receiver Profile'),
        leading: BackButton(onPressed: () => Navigator.pop<Object>(context)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Form(
            key: FormKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Full Name',
                      filled: true,
                      fillColor: Colors.white),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter full name';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'IC Number',
                      filled: true,
                      fillColor: Colors.white),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter ic number';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField(
                  value: selectedValue,
                  items: gender
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as String;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: "Gender",
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                DropdownButtonFormField(
                  value: _selectedValue,
                  items: race
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value as String;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: "Race",
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                DropdownButtonFormField(
                  value: SelectedValue,
                  items: marital
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      SelectedValue = value as String;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: "Marital Status",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone Number',
                      filled: true,
                      fillColor: Colors.white),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter phone number';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Address',
                      filled: true,
                      fillColor: Colors.white),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter address';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Occupation',
                      filled: true,
                      fillColor: Colors.white),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter occupation';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Yearly Income',
                      filled: true,
                      fillColor: Colors.white),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter yearly income';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Dependecies',
                      filled: true,
                      fillColor: Colors.white),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter dependecies';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (FormKey.currentState!.validate()) {
                      print('The form is successfully validated.');
                    }
                    print('error');
                  },
                  child: Text("Save",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple)),
                )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 240, 136, 171),
    );
  }
}
