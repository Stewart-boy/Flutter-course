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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("How are you"),
                Text("How are you"),
                Text("How are you"),
              ],
            ),
            Text("This is another column"),
          ],
        ),
      ),
    );
  }
}
