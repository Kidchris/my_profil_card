import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("./assets/chris.jpg"),
                      radius: 100.0,
                    ),
                  ),
                  Text(
                    "KINDA Christian",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Fredericka",
                        fontSize: 35,
                        letterSpacing: 2.0),
                  ),
                  Divider(
                    thickness: 3.0,
                    indent: 150,
                    endIndent: 150,
                    color: Color(0xFFFFFFFF),
                  ),
                  Text(
                    "Passionate Data Scientist",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Insomnia",
                        fontSize: 25),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                    child: Card(
                      child: ListTile(
                        // tileColor: Colors.white,
                        iconColor: Colors.teal,
                        textColor: Colors.teal,
                        leading: Icon(
                          Icons.phone,
                        ),
                        title: Text(
                          "(00226) 64373649/62686231",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                    child: Card(
                      child: ListTile(
                        // tileColor: Colors.white,
                        iconColor: Colors.teal,
                        textColor: Colors.teal,
                        leading: Icon(
                          Icons.mail,
                        ),
                        title: Text(
                          "kidchris960@gmail.com",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
