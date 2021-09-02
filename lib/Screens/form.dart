import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Myform()));
}

class Myform extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyFormState();
  }
}

class MyFormState extends State<Myform> {
  var _myFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
        backgroundColor: Colors.deepOrange[500],
        leading: Icon(Icons.account_circle_rounded),
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.amber[200],
            fontSize: 24,
          ),
        ),
        elevation: 15,
        shadowColor: Colors.orangeAccent,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        child: Form(
          key: _myFormKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (String msg) {
                    if (msg.isEmpty) {
                      return "Please enter name";
                    }
                    if (msg.length < 2) {
                      return "please enter your valid name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      icon: const Icon(Icons.person),
                      labelText: "Name",
                      hintText: "Enter your name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  validator: (String msg) {
                    if (msg.isEmpty) {
                      return "Please enter mobile number";
                    }
                    if (msg.length != 10) {
                      return "Please enter valid mobile number";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      icon: const Icon(Icons.phone),
                      labelText: "Mobile Number",
                      hintText: "Enter your mobile number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (String msg) {
                    if (msg.isEmpty) {
                      return "Please enter email";
                    }
                    if (msg.length < 2) {
                      return "please enter your valid email";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      icon: const Icon(Icons.email),
                      labelText: "Email Address",
                      hintText: "Enter your email address",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        backgroundColor: Colors.lightGreen,
        shape: RoundedRectangleBorder(),
        onPressed: () {
          _myFormKey.currentState.validate();
        },
      ),
    );
  }
}
