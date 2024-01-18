import 'dart:ui';

import 'package:billapp/admindashboard.dart';
import 'package:flutter/material.dart';

class AdminCredit extends StatefulWidget {
  @override
  State<AdminCredit> createState() => _AdminCreditState();
}

class _AdminCreditState extends State<AdminCredit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AdminDashboard()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: Text(
          "Credit Report",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              width: double.infinity,
              height: 55,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 3,
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
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  border: TableBorder.all(),
                  horizontalMargin: 10, // Adjust the margin as needed
                  columns: [
                    DataColumn(
                        label: Text(
                      'S.No',
                      style: TextStyle(
                          color: Color.fromARGB(255, 55, 2, 105),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),
                    DataColumn(
                      label: Text(
                        'Customer Name',
                        style: TextStyle(
                            color: Color.fromARGB(255, 55, 2, 105),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    DataColumn(
                        label: Text(
                      'Credit Amount',
                      style: TextStyle(
                          color: Color.fromARGB(255, 55, 2, 105),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),

                    // Add more DataColumn widgets for additional columns
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('Deepa')),
                      DataCell(Text('200')),

                      // Add more DataCell widgets for additional cells
                    ]),
                    DataRow(cells: [
                      DataCell(Text('2')),
                      DataCell(Text('Bharathi')),
                      DataCell(Text('500')),

                      // Add more DataCell widgets for additional cells
                    ]),
                    DataRow(cells: [
                      DataCell(Text('3')),
                      DataCell(Text('Thiru')),
                      DataCell(Text('700')),

                      // Add more DataCell widgets for additional cells
                    ]),
                    // Add more DataRow widgets for additional rows
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
