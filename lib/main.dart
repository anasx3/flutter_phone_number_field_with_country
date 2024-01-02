// ignore_for_file: prefer_const_constructors, prefer_final_fields, use_key_in_widget_constructors, must_be_immutable, unused_field, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  GlobalKey<FormState> _formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Phone Field"),
          leading: Icon(
            Icons.search,
            size: 25,
            color: Colors.white,
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.message))],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(borderSide: BorderSide())),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(borderSide: BorderSide())),
                ),
                SizedBox(
                  height: 10,
                ),
                IntlPhoneField(
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      border: OutlineInputBorder(borderSide: BorderSide())),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "ارسال",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
