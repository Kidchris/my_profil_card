import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

_makingPhoneCall() async {
  var url = Uri.parse("tel:64373649");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    const AlertDialog(
      title: Text("Error"),
      titleTextStyle: TextStyle(
        color: Colors.white60,
      ),
      content: Text("Can not launch PhonePad"),
      backgroundColor: Colors.redAccent,
    );
  }
}

_sendingEmail() async {
  var url = Uri.parse("mailto:kidchris960@gmail.com");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    const AlertDialog(
      title: Text("Error"),
      titleTextStyle: TextStyle(
        color: Colors.white60,
      ),
      content: Text("Can not launch PhonePad"),
      backgroundColor: Colors.redAccent,
    );
  }
}

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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: CircleAvatar(
                  backgroundImage: AssetImage("./assets/chris.jpg"),
                  radius: 100.0,
                ),
              ),
              const Text(
                "KINDA Christian",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Fredericka",
                    fontSize: 35,
                    letterSpacing: 2.0),
              ),
              const Divider(
                thickness: 3.0,
                indent: 150,
                endIndent: 150,
                color: Color(0xFFFFFFFF),
              ),
              const Text(
                "Passionate Data Scientist",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Insomnia", fontSize: 25),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Card(
                  child: ListTile(
                    onTap: () {
                      _makingPhoneCall();
                    },
                    // tileColor: Colors.white,
                    iconColor: Colors.teal,
                    textColor: Colors.teal,
                    leading: const Icon(
                      Icons.phone,
                    ),
                    title: const Text(
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
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Card(
                  child: ListTile(
                    onTap: () {
                      _sendingEmail();
                    },
                    // tileColor: Colors.white,
                    iconColor: Colors.teal,
                    textColor: Colors.teal,
                    leading: const Icon(
                      Icons.mail,
                    ),
                    title: const Text(
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
