import 'package:flutter/material.dart';

class credit extends StatefulWidget {
  const credit({super.key});

  @override
  State<credit> createState() => _creditState();
}

class _creditState extends State<credit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text('Credit'),
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
              margin: EdgeInsets.all(17),
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Total Amount',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.pink,
                      width: 1.0,
                    ),
                    borderRadius:
                        BorderRadius.circular(10.0), // Set the border radius
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.pink,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(
                        10.0), // Set the focused border radius
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(17),
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Credit Amount',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.pink,
                      width: 1.0,
                    ),
                    borderRadius:
                        BorderRadius.circular(10.0), // Set the border radius
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.pink,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(
                        10.0), // Set the focused border radius
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 50,
              width: 190,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => Otp()));
                },
                child: Text(
                  'Credit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
