import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                  Color(0x99FF9800),
                  Colors.white,
                  Color(0x66FFC46D)
                ],
                    stops: [
                  -0.5,
                  0.4,
                  3.0
                ],
                    tileMode: TileMode.repeated, 
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
                    child:Center(
                      child: ElevatedButton(
                        child:Text('Open Bottom Sheet'),
                        onPressed: () {
                          showModalBottomSheet(
                            context:context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top:Radius.circular(20),
                              ),
                            ),
                            builder: (context) => Center(
                              child: Container(
                                    width: 375,
                                    height: 812,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(color: Colors.white),
                                    child: Stack(
                                        children: [
                                            Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                    width: 375,
                                                    height: 44,
                                                    child: Stack(
                                                        children: [
                                                            Positioned(
                                                                left: 336.33,
                                                                top: 17.33,
                                                                child: Container(
                                                                    width: 24.33,
                                                                    height: 11.33,
                                                                    child: Stack(
                                                                        children: [
                                                                            Positioned(
                                                                                left: 0,
                                                                                top: 0,
                                                                                child: Opacity(
                                                                                    opacity: 0.35,
                                                                                    child: Container(
                                                                                        width: 22,
                                                                                        height: 11.33,
                                                                                        decoration: ShapeDecoration(
                                                                                            shape: RoundedRectangleBorder(
                                                                                                side: BorderSide(width: 1),
                                                                                                borderRadius: BorderRadius.circular(2.67),
                                                                                            ),
                                                                                        ),
                                                                                    ),
                                                                                ),
                                                                            ),
                                                                            Positioned(
                                                                                left: 2,
                                                                                top: 2,
                                                                                child: Container(
                                                                                    width: 18,
                                                                                    height: 7.33,
                                                                                    decoration: ShapeDecoration(
                                                                                        color: Colors.black,
                                                                                        shape: RoundedRectangleBorder(
                                                                                            borderRadius: BorderRadius.circular(1.33),
                                                                                        ),
                                                                                    ),
                                                                                ),
                                                                            ),
                                                                        ],
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 316,
                                                                top: 17.33,
                                                                child: Container(
                                                                    width: 15.33,
                                                                    height: 11,
                                                                    decoration: BoxDecoration(
                                                                        image: DecorationImage(
                                                                            image: NetworkImage("https://via.placeholder.com/15x11"),
                                                                            fit: BoxFit.fill,
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 294,
                                                                top: 17.67,
                                                                child: Container(
                                                                    width: 17,
                                                                    height: 10.67,
                                                                    decoration: BoxDecoration(
                                                                        image: DecorationImage(
                                                                            image: NetworkImage("https://via.placeholder.com/17x11"),
                                                                            fit: BoxFit.fill,
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 21,
                                                                top: 7,
                                                                child: Container(
                                                                    width: 54,
                                                                    height: 21,
                                                                    child: Stack(
                                                                        children: [
                                                                            Positioned(
                                                                                left: 0,
                                                                                top: 7,
                                                                                child: SizedBox(
                                                                                    width: 54,
                                                                                    child: Text(
                                                                                        '4:20',
                                                                                        textAlign: TextAlign.center,
                                                                                        style: TextStyle(
                                                                                            color: Colors.black,
                                                                                            fontSize: 15,
                                                                                            fontFamily: 'Poppins',
                                                                                            fontWeight: FontWeight.w900,
                                                                                            height: 0,
                                                                                            letterSpacing: -0.30,
                                                                                        ),
                                                                                    ),
                                                                                ),
                                                                            ),
                                                                        ],
                                                                    ),
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 40,
                                                top: 44,
                                                child: Container(
                                                    width: 295,
                                                    height: 52,
                                                    child: Stack(
                                                        children: [
                                                            Positioned(
                                                                left: 243,
                                                                top: 0,
                                                                child: Container(
                                                                    width: 52,
                                                                    height: 52,
                                                                    child: Stack(
                                                                        children: [
                                                                            Positioned(
                                                                                left: 0,
                                                                                top: 0,
                                                                                child: Container(
                                                                                    width: 52,
                                                                                    height: 52,
                                                                                    child: Stack(
                                                                                        children: [
                                                                                            Positioned(
                                                                                                left: 0,
                                                                                                top: 0,
                                                                                                child: Container(
                                                                                                    width: 52,
                                                                                                    height: 52,
                                                                                                    decoration: ShapeDecoration(
                                                                                                        color: Colors.white,
                                                                                                        shape: RoundedRectangleBorder(
                                                                                                            side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                                                                                                            borderRadius: BorderRadius.circular(15),
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ),
                                                                                            Positioned(
                                                                                                left: 14,
                                                                                                top: 14,
                                                                                                child: Container(
                                                                                                    width: 24,
                                                                                                    height: 24,
                                                                                                    child: Stack(children: [
                                                                                                    
                                                                                                    ]),
                                                                                                ),
                                                                                            ),
                                                                                        ],
                                                                                    ),
                                                                                ),
                                                                            ),
                                                                        ],
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: SizedBox(
                                                                    width: 223,
                                                                    child: Text(
                                                                        'Messages',
                                                                        style: TextStyle(
                                                                            color: Colors.black,
                                                                            fontSize: 34,
                                                                            fontFamily: 'Poppins',
                                                                            fontWeight: FontWeight.w700,
                                                                            height: 0.04,
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Opacity(
                                                    opacity: 0.50,
                                                    child: Container(
                                                        width: 375,
                                                        height: 812,
                                                        decoration: BoxDecoration(color: Colors.black),
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 40,
                                                top: 730,
                                                child: Container(
                                                    width: 295,
                                                    height: 48,
                                                    child: Stack(
                                                        children: [
                                                            Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: Container(
                                                                    width: 232,
                                                                    height: 48,
                                                                    decoration: ShapeDecoration(
                                                                        color: Colors.white,
                                                                        shape: RoundedRectangleBorder(
                                                                            side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                                                                            borderRadius: BorderRadius.circular(15),
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 196,
                                                                top: 14,
                                                                child: Container(
                                                                    width: 20,
                                                                    height: 20,
                                                                    child: Stack(children: [
                                                                    
                                                                    ]),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 247,
                                                                top: 0,
                                                                child: Container(
                                                                    width: 48,
                                                                    height: 48,
                                                                    decoration: ShapeDecoration(
                                                                        color: Colors.white,
                                                                        shape: RoundedRectangleBorder(
                                                                            side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                                                                            borderRadius: BorderRadius.circular(15),
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 261,
                                                                top: 14,
                                                                child: Container(
                                                                    width: 20,
                                                                    height: 20,
                                                                    child: Stack(children: [
                                                                    
                                                                    ]),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 16,
                                                                top: 14,
                                                                child: Text(
                                                                    'Your message',
                                                                    style: TextStyle(
                                                                        color: Colors.black.withOpacity(0.4000000059604645),
                                                                        fontSize: 14,
                                                                        fontFamily: 'Poppins',
                                                                        fontWeight: FontWeight.w400,
                                                                        height: 0.11,
                                                                    ),
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 40,
                                                top: 261,
                                                child: Container(
                                                    width: 250,
                                                    height: 117,
                                                    child: Stack(
                                                        children: [
                                                            Positioned(
                                                                left: 0,
                                                                top: 99,
                                                                child: Text(
                                                                    '2:55 PM',
                                                                    style: TextStyle(
                                                                        color: Colors.black.withOpacity(0.4000000059604645),
                                                                        fontSize: 12,
                                                                        fontFamily: 'Poppins',
                                                                        fontWeight: FontWeight.w400,
                                                                        height: 0.12,
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: Opacity(
                                                                    opacity: 0.07,
                                                                    child: Container(
                                                                        width: 250,
                                                                        height: 95,
                                                                        decoration: ShapeDecoration(
                                                                            color: Color(0xFFFFC700),
                                                                            shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.only(
                                                                                    topLeft: Radius.circular(15),
                                                                                    topRight: Radius.circular(15),
                                                                                    bottomRight: Radius.circular(15),
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                            ElevatedButton(
                                                                child:Text('close'),
                                                                onPressed: () => Navigator.pop(context)
                                                              ),
                                                            Positioned(
                                                                left: 16,
                                                                top: 16,
                                                                child: SizedBox(
                                                                    width: 218,
                                                                    child: Text(
                                                                        'Hi Jake, how are you? I saw on the app that we’ve crossed paths several times this week 😄',
                                                                        style: TextStyle(
                                                                            color: Colors.black,
                                                                            fontSize: 14,
                                                                            fontFamily: 'Poppins',
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 0.11,
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 40,
                                                top: 233,
                                                child: Container(
                                                    width: 295,
                                                    height: 36,
                                                    child: Stack(
                                                        children: [
                                                            Positioned(
                                                                left: 131,
                                                                top: 0,
                                                                child: SizedBox(
                                                                    width: 33,
                                                                    child: Text(
                                                                        'Today',
                                                                        textAlign: TextAlign.center,
                                                                        style: TextStyle(
                                                                            color: Colors.black.withOpacity(0.699999988079071),
                                                                            fontSize: 12,
                                                                            fontFamily: 'Poppins',
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 0.12,
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 174,
                                                                top: 10,
                                                                child: Container(
                                                                    width: 121,
                                                                    height: 1,
                                                                    decoration: BoxDecoration(color: Color(0xFFE8E6EA)),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 0,
                                                                top: 10,
                                                                child: Container(
                                                                    width: 121,
                                                                    height: 1,
                                                                    decoration: BoxDecoration(color: Color(0xFFE8E6EA)),
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 40,
                                                top: 515,
                                                child: Container(
                                                    width: 143,
                                                    height: 75,
                                                    child: Stack(
                                                        children: [
                                                            Positioned(
                                                                left: 0,
                                                                top: 57,
                                                                child: Text(
                                                                    '3:10 PM',
                                                                    style: TextStyle(
                                                                        color: Colors.black.withOpacity(0.4000000059604645),
                                                                        fontSize: 12,
                                                                        fontFamily: 'Poppins',
                                                                        fontWeight: FontWeight.w400,
                                                                        height: 0.12,
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: Opacity(
                                                                    opacity: 0.07,
                                                                    child: Container(
                                                                        width: 143,
                                                                        height: 53,
                                                                        decoration: ShapeDecoration(
                                                                            color: Color(0xFFFFC700),
                                                                            shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.only(
                                                                                    topLeft: Radius.circular(15),
                                                                                    topRight: Radius.circular(15),
                                                                                    bottomRight: Radius.circular(15),
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 16,
                                                                top: 16,
                                                                child: Text(
                                                                    'Sure, let’s do it! 😊',
                                                                    style: TextStyle(
                                                                        color: Colors.black,
                                                                        fontSize: 14,
                                                                        fontFamily: 'Poppins',
                                                                        fontWeight: FontWeight.w400,
                                                                        height: 0.11,
                                                                    ),
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 85,
                                                top: 388,
                                                child: Container(
                                                    width: 250,
                                                    height: 117,
                                                    child: Stack(
                                                        children: [
                                                            Positioned(
                                                                left: 185,
                                                                top: 99,
                                                                child: Container(
                                                                    width: 65,
                                                                    height: 18,
                                                                    child: Stack(
                                                                        children: [
                                                                            Positioned(
                                                                                left: 0,
                                                                                top: 0,
                                                                                child: Text(
                                                                                    '3:02 PM',
                                                                                    textAlign: TextAlign.right,
                                                                                    style: TextStyle(
                                                                                        color: Colors.black.withOpacity(0.4000000059604645),
                                                                                        fontSize: 12,
                                                                                        fontFamily: 'Poppins',
                                                                                        fontWeight: FontWeight.w400,
                                                                                        height: 0.12,
                                                                                    ),
                                                                                ),
                                                                            ),
                                                                            Positioned(
                                                                                left: 49,
                                                                                top: 1,
                                                                                child: Container(
                                                                                    width: 16,
                                                                                    height: 16,
                                                                                    child: Stack(children: [
                                                                                    
                                                                                    ]),
                                                                                ),
                                                                            ),
                                                                        ],
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: Container(
                                                                    width: 250,
                                                                    height: 95,
                                                                    decoration: ShapeDecoration(
                                                                        color: Color(0xFFF3F3F3),
                                                                        shape: RoundedRectangleBorder(
                                                                            borderRadius: BorderRadius.only(
                                                                                topLeft: Radius.circular(15),
                                                                                topRight: Radius.circular(15),
                                                                                bottomLeft: Radius.circular(15),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 16,
                                                                top: 16,
                                                                child: SizedBox(
                                                                    width: 218,
                                                                    child: Text(
                                                                        'Haha truly! Nice to meet you Grace! What about a cup of coffee today evening? ☕️ ',
                                                                        style: TextStyle(
                                                                            color: Colors.black,
                                                                            fontSize: 14,
                                                                            fontFamily: 'Poppins',
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 0.11,
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 111,
                                                top: 600,
                                                child: Container(
                                                    width: 224,
                                                    height: 96,
                                                    child: Stack(
                                                        children: [
                                                            Positioned(
                                                                left: 163,
                                                                top: 78,
                                                                child: Container(
                                                                    width: 61,
                                                                    height: 18,
                                                                    child: Stack(
                                                                        children: [
                                                                            Positioned(
                                                                                left: 0,
                                                                                top: 0,
                                                                                child: Text(
                                                                                    '3:12 PM',
                                                                                    textAlign: TextAlign.right,
                                                                                    style: TextStyle(
                                                                                        color: Colors.black.withOpacity(0.4000000059604645),
                                                                                        fontSize: 12,
                                                                                        fontFamily: 'Poppins',
                                                                                        fontWeight: FontWeight.w400,
                                                                                        height: 0.12,
                                                                                    ),
                                                                                ),
                                                                            ),
                                                                            Positioned(
                                                                                left: 45,
                                                                                top: 1,
                                                                                child: Container(
                                                                                    width: 16,
                                                                                    height: 16,
                                                                                    child: Stack(children: [
                                                                                    
                                                                                    ]),
                                                                                ),
                                                                            ),
                                                                        ],
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: Container(
                                                                    width: 224,
                                                                    height: 74,
                                                                    decoration: ShapeDecoration(
                                                                        color: Color(0xFFF3F3F3),
                                                                        shape: RoundedRectangleBorder(
                                                                            borderRadius: BorderRadius.only(
                                                                                topLeft: Radius.circular(15),
                                                                                topRight: Radius.circular(15),
                                                                                bottomLeft: Radius.circular(15),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 7,
                                                                top: 16,
                                                                child: Text(
                                                                    'Great I will write later the exact\ntime and place. See you soon!',
                                                                    style: TextStyle(
                                                                        color: Colors.black,
                                                                        fontSize: 14,
                                                                        fontFamily: 'Poppins',
                                                                        fontWeight: FontWeight.w400,
                                                                        height: 0.11,
                                                                    ),
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 40,
                                                top: 134,
                                                child: Container(
                                                    width: 295,
                                                    height: 58,
                                                    child: Stack(
                                                        children: [
                                                            Positioned(
                                                                left: 66,
                                                                top: 0,
                                                                child: SizedBox(
                                                                    width: 157,
                                                                    child: Text(
                                                                        'Grace',
                                                                        style: TextStyle(
                                                                            color: Colors.black,
                                                                            fontSize: 24,
                                                                            fontFamily: 'Poppins',
                                                                            fontWeight: FontWeight.w700,
                                                                            height: 0.06,
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 76,
                                                                top: 32,
                                                                child: SizedBox(
                                                                    width: 147,
                                                                    child: Text(
                                                                        'Online',
                                                                        style: TextStyle(
                                                                            color: Colors.black.withOpacity(0.4000000059604645),
                                                                            fontSize: 12,
                                                                            fontFamily: 'Poppins',
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 0.12,
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 0,
                                                                top: 2,
                                                                child: Container(
                                                                    width: 56,
                                                                    height: 56,
                                                                    child: Stack(
                                                                        children: [
                                                                            Positioned(
                                                                                left: 0,
                                                                                top: 0,
                                                                                child: Container(
                                                                                    width: 56,
                                                                                    height: 56,
                                                                                    decoration: ShapeDecoration(
                                                                                        color: Colors.white,
                                                                                        shape: OvalBorder(
                                                                                            side: BorderSide(width: 2, color: Color(0xFFF27121)),
                                                                                        ),
                                                                                    ),
                                                                                ),
                                                                            ),
                                                                            Positioned(
                                                                                left: 4,
                                                                                top: 4,
                                                                                child: Container(
                                                                                    width: 48,
                                                                                    height: 48,
                                                                                    decoration: ShapeDecoration(
                                                                                        image: DecorationImage(
                                                                                            image: NetworkImage("https://via.placeholder.com/48x48"),
                                                                                            fit: BoxFit.cover,
                                                                                        ),
                                                                                        shape: OvalBorder(),
                                                                                    ),
                                                                                ),
                                                                            ),
                                                                        ],
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 243,
                                                                top: 4,
                                                                child: Container(
                                                                    width: 52,
                                                                    height: 52,
                                                                    child: Stack(
                                                                        children: [
                                                                            Positioned(
                                                                                left: 0,
                                                                                top: 0,
                                                                                child: Container(
                                                                                    width: 52,
                                                                                    height: 52,
                                                                                    child: Stack(
                                                                                        children: [
                                                                                            Positioned(
                                                                                                left: 0,
                                                                                                top: 0,
                                                                                                child: Container(
                                                                                                    width: 52,
                                                                                                    height: 52,
                                                                                                    decoration: ShapeDecoration(
                                                                                                        color: Colors.white,
                                                                                                        shape: RoundedRectangleBorder(
                                                                                                            side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                                                                                                            borderRadius: BorderRadius.circular(15),
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ),
                                                                                            Positioned(
                                                                                                left: 14,
                                                                                                top: 14,
                                                                                                child: Container(
                                                                                                    width: 24,
                                                                                                    height: 24,
                                                                                                    child: Stack(children: [
                                                                                                    
                                                                                                    ]),
                                                                                                ),
                                                                                            ),
                                                                                        ],
                                                                                    ),
                                                                                ),
                                                                            ),
                                                                        ],
                                                                    ),
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 174,
                                                top: 93,
                                                child: Container(
                                                    width: 27,
                                                    height: 12.06,
                                                    child: Stack(
                                                        children: [
                                                            Positioned(
                                                                left: 7,
                                                                top: 3,
                                                                child: Container(
                                                                    width: 13,
                                                                    height: 3,
                                                                    decoration: ShapeDecoration(
                                                                        color: Color(0xFFE8E6EA),
                                                                        shape: RoundedRectangleBorder(
                                                                            borderRadius: BorderRadius.circular(1.50),
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 106,
                                                top: 173,
                                                child: Container(
                                                    width: 6,
                                                    height: 6,
                                                    decoration: ShapeDecoration(
                                                        color: Color(0xFFFFC700),
                                                        shape: OvalBorder(),
                                                    ),
                                                ),
                                            ),
                                        ],
                                    ),
                                )
                            )
                          );
                        }
                      )
                    )
            )
            );
          }
        }