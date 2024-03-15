import 'package:flutter/material.dart';
import 'package:soul_meet_num/Widgets/messagesPersonWidget.dart';
import 'dart:convert';
import 'package:soul_meet_num/Widgets/messages_json.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    
  final List<Map<String, dynamic>> items = List<Map<String, dynamic>>.from(json.decode(jsonData));
    return Scaffold(
      body: Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:20.0, right:20.0, top:40.0),
            child: Row(
              children:[
                SizedBox(
                    width: 199,
                    child: Text(
                        'Messages',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 34,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                        ),
                    ),
                ),
                Spacer(),
                Container(
                        width: 52,
                        height: 52,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1, color: Color(0xFFE8E6EA)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Center(
                          child: IconButton(
                            iconSize: 20,
                            icon: const Icon(
                              Icons.tune,
                              color: Color(0xFFFFC700),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
              ]
            ),
          ),
          SizedBox(height:20),
          Container(
                width: 350,
                height: 128,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    createPersonWidget('You', 'https://via.placeholder.com/58x58', 'You'),
                    createPersonWidget('Emma', 'https://via.placeholder.com/58x58', 'Emma'),
                    createPersonNonActiveWidget('Ava', 'https://via.placeholder.com/58x58', 'Ava'),
                    createPersonNonActiveWidget('Sophia', 'https://via.placeholder.com/58x58', 'Sophia'),
                    createPersonWidget('Amel', 'https://via.placeholder.com/58x58', 'Ameliai'),
                    createPersonNonActiveWidget('Ameli', 'https://via.placeholder.com/58x58', 'Amelia'),
                    createPersonWidget('Am21li', 'https://via.placeholder.com/58x58', 'Amelia'),
                    createPersonNonActiveWidget('Ameli', 'https://via.placeholder.com/58x58', 'Amelia'),
                  ],
                ),
              ),
            Container(
                  width: 385,
                  height: 533,
                  child: Stack(
                      children: [
                            Padding(
                              padding: const EdgeInsets.only(left:10.0),
                              child: Text(
                                  'Messages',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      height: 0.08,
                                  ),
                              ),
                            ),
                            SizedBox(height:30),
                            SingleChildScrollView(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                  child: Column(
                                    children: items.map((item) {
                                      return InkWell(
                                        onTap: () {},
                                        child: Container(
                                          margin: EdgeInsets.symmetric(vertical: 12),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 48,
                                                height: 48,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(40),
                                                  child: Image.asset(
                                                    item["image"],
                                                    height: 48,
                                                    width: 48,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 20),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      item["title"],
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(height: 8),
                                                    Text(
                                                      item["subtext"],
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w500,
                                                        color: Colors.black54,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Spacer(),
                                              Column(
                                                children: [
                                                  Text(
                                                    item["time"],
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black45,
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                  SizedBox(height: 6),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    width: 27,
                                                    height: 27,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFFFC700),
                                                      borderRadius: BorderRadius.circular(20),
                                                    ),
                                                    child: Text(
                                                      item["messageCount"],
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.w500,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                                  ),                          
                    ],
                  ),
              ),
          ],
        ), 
      ),
    );
  }
}


