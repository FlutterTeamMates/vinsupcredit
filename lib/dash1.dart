import 'package:billapp/credit.dart';
import 'package:billapp/pay.dart';

import 'package:flutter/material.dart';

class Dash1 extends StatefulWidget {
  const Dash1({super.key});

  @override
  State<Dash1> createState() => _Dash1State();
}

class _Dash1State extends State<Dash1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text('Customer'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_2_rounded)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.pink,
              ),
              height: 70,
              width: 250,
              child: Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => credit()));
                  },
                  child: Text(
                    'Credit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.pink,
              ),
              margin: EdgeInsets.only(top: 20),
              height: 70,
              width: 250,
              child: Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Repay()));
                  },
                  child: Text(
                    'RePay',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
