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
  int indexcount = 0;
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldkey,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("John Application", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        elevation: 10,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 40.0,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                  "https://www.adeleyeayodeji.com/img/IMG_20200522_121756_834_2.jpg",
                ),
              ),
              accountName: Text("John"),
              accountEmail: Text("hello@aqskillcom"),
            ),
            ListTile(title: Text("Home")),
            Divider(color: Colors.black, height: 0),
            ListTile(title: Text("About"), leading: Icon(Icons.info)),
            Divider(color: Colors.black, height: 0),
            ListTile(
              title: Text("Contact"),
              leading: Icon(Icons.contact_phone),
            ),
            Divider(color: Colors.black, height: 0),
            ListTile(title: Text("Settings"), leading: Icon(Icons.settings)),
            Divider(color: Colors.black, height: 0),
            ListTile(title: Text("Logout"), leading: Icon(Icons.exit_to_app)),
            Divider(color: Colors.black),
            ListTile(title: Text("App Version: 1.0.0")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Am working");
        },
        child: Icon(Icons.share),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  "I'm Working",
                  style: TextStyle(fontSize: 50.8, fontWeight: FontWeight.bold),
                ),
                Image.network(
                  "https://plus.unsplash.com/premium_photo-1681702156223-ea59bfbf1065?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bGFwdG9yfGVufDB8fDB8fHww",
                  width: 500.0,
                  height: 500.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Enter your name",
                    hintText: "Enter your name",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "This is a sample text This is a sample text This is a sample text This is a sample text",
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Button Pressed");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Button Pressed"),
                        backgroundColor: Colors.red,
                      ),
                    );
                  },
                  child: Text("Click Me"),
                ),
              ],
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                print("Home Button Pressed");
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print("Settings Button Pressed");
              },
            ),
            IconButton(
              icon: Icon(Icons.contact_phone),
              onPressed: () {
                print("Contact Button Pressed");
              },
            ),
          ],
        ),
      ],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexcount,
        fixedColor: Colors.red,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label: "Contact",
          ),
        ],
        onTap: (int index) {
          print("Index: $index");
          setState(() {
            indexcount = index;
          });
        },
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              child: Text(
                "End Drawer",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            ListTile(title: Text("Home"), leading: Icon(Icons.home)),
            Divider(color: Colors.black, height: 0),
            ListTile(title: Text("About"), leading: Icon(Icons.info)),
            Divider(color: Colors.black, height: 0),
            ListTile(
              title: Text("Contact"),
              leading: Icon(Icons.contact_phone),
            ),
            Divider(color: Colors.black, height: 0),
            ListTile(title: Text("Settings"), leading: Icon(Icons.settings)),
            Divider(color: Colors.black, height: 0),
            ListTile(title: Text("Logout"), leading: Icon(Icons.exit_to_app)),
            Divider(color: Colors.black),
            ListTile(
              title: Text("App Version: 1.0.0"),
              leading: Icon(Icons.info),
            ),
          ],
        ),
      ),
    );
  }
}
