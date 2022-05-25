import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage("./assets/chris.jpg"),
                    radius: 100.0,
                  ),
                  Text(
                    "Kinda Christian",
                    style: TextStyle(color: Colors.white),
                  ),
                  Divider(
                    thickness: 3.0,
                    indent: 150,
                    endIndent: 150,
                    color: Color(0xFFFFFFFF),
                  ),
                  Text(
                    "Passionate Data Scientist",
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
                    child: Card(
                      child: ListTile(
                        // tileColor: Colors.white,
                        iconColor: Colors.teal,
                        textColor: Colors.teal,
                        leading: Icon(
                          Icons.phone,
                        ),
                        title: Text("(00226) 64373649/ 62686231"),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
                    child: Card(
                      child: ListTile(
                        // tileColor: Colors.white,
                        iconColor: Colors.teal,
                        textColor: Colors.teal,
                        leading: Icon(
                          Icons.mail,
                        ),
                        title: Text("kidchris960@gmail.com"),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
