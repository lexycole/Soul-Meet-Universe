import 'package:flutter/material.dart';

Widget createPersonWidget(String name, String imageUrl, String label) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8),
    child: Container(
      width: 66,
      height: 128,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 66,
            height: 66,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: const OvalBorder(
                side: BorderSide(width: 2, color: const Color(0xFFF27121)),
              ),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 66,
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget createPersonNonActiveWidget(String name, String imageUrl, String label) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8), // Adjust the spacing as needed
    child: Container(
      width: 66,
      height: 128,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 66,
            height: 58,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
              shape: const OvalBorder(),
            ),
          ),
          SizedBox(
            width: 66,
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

