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
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            height: 100,
            child: Text(
              "Welcome to AQskill faraty tghihjgkg futrugkk kgiufjyfuj kjhutf khgkug kugiugi",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                fontSize: 24,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                wordSpacing: 3,
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              text: "Don't have an account?",
              style: TextStyle(color: Colors.black, fontSize: 16),
              children: [
                WidgetSpan(child: Icon(Icons.unsubscribe_rounded)),
                TextSpan(
                  text: "  Sign Up",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer:
                      TapGestureRecognizer()
                        ..onTap = () {
                          print("Sing up");
                        },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
