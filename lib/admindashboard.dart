import 'dart:async';

import 'package:billapp/adminbalance.dart';
import 'package:billapp/cartprovider.dart';
import 'package:billapp/generator.dart';
import 'package:billapp/login.dart';
import 'package:billapp/profile.dart';
import 'package:flutter/material.dart';

import 'admincredit.dart';
import 'adminscan.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  // int _counter = 0;
  // int _counter2 = 0;
  // int _counter3 = 0;
  // int _counter4 = 0;
  // late Timer _timer;
  //
  // @override
  // void initState() {
  //   super.initState();
  //
  //   // Create a timer that runs every 1 second
  //   _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
  //     setState(() {
  //       if (_counter < 100) {
  //         _counter++;
  //       }
  //       if (_counter2 < 110) {
  //         _counter2++;
  //       }
  //       if (_counter3 < 150) {
  //         _counter3++;
  //       }
  //       if (_counter4 < 110) {
  //         _counter4++;
  //       }
  //       else {
  //         // Countdown is complete, you can perform any actions here
  //         _timer.cancel(); // Stop the timer
  //       }
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GenerateQRPage()));
            },
            icon: Icon(
              Icons.qr_code,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
        title: Text(
          'Vinsup Store',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Deepa'),
              accountEmail: Text('deepa123@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('image/profile.jpg'),
              ),
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person_add_alt_rounded,
                color: Colors.pink,
              ),
              title: Text(
                'Create User',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                // Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.credit_score,
                color: Colors.pink,
              ),
              title: Text(
                'credit Report',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AdminCredit()));
                // Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.report,
                color: Colors.pink,
              ),
              title: Text(
                'Balance Report',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AdminBalance()));
                // Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.pink,
              ),
              title: Text(
                'Admin Profile',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
                // Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: Colors.pink,
              ),
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  width: MediaQuery.of(context).size.width / 1.3,
                  height: 45,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 8,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search User",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 17,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_list,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 8,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Registered',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'Customers',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '100',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.pink,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 8,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'Credits',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '1000',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.pink,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 8,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Balance',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'Credits',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '700',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.pink,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 8,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Paid ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'Customers',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '300',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.pink,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 60.0, // Set the height of the button
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AdminQr()));
                },
                child: Text(
                  'Scan QR',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  // void dispose() {
  //   // Cancel the timer to avoid memory leaks
  //   _timer.cancel();
  //   super.dispose();
  // }
}
