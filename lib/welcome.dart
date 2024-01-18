import 'package:billapp/select.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        margin: EdgeInsets.only(left: 60, top: 150),
        child: Column(
          children: [
            Container(
              width: 90,
              height: 90,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: new DecorationImage(
                  image: new AssetImage("images/logo.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Welcome To",
              style: TextStyle(
                fontSize: 25,
                // fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "Vinsup Credit Bill App",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('images/credit.jpg'))),
            ),
            // Lottie.asset('animations/Animation.json',
            //     height: 300, reverse: true, repeat: true, fit: BoxFit.cover),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50.0, // Set the height of the button
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Select()));
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  // backgroundColor: Color.fromARGB(255, 75, 22, 76),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
