import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const JohnEntryWidget());
}

class JohnEntryWidget extends StatelessWidget {
  const JohnEntryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "John Application",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
      home: JohnHomePage(),
    );
  }
}

class JohnHomePage extends StatefulWidget {
  const JohnHomePage({super.key});

  @override
  State<JohnHomePage> createState() => _JohnHomePageState();
}

class _JohnHomePageState extends State<JohnHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  //usernameconroller
  final TextEditingController _usernameController = TextEditingController();
  //passwordcontroller
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("John Application", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                icon: Icon(Icons.person, color: Colors.black),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
                labelText: "User Name",
                hintText: "Enter User Name",
              ),
            ),
          ),
          //password
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock, color: Colors.black),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
                labelText: "Password",
                hintText: "Enter Password",
              ),
            ),
          ),
          //button
          ElevatedButton(
            onPressed: () {
              var username = _usernameController.text;
              var password = _passwordController.text;
              print("username:" + username + " password: " + password);
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
