import 'package:flutter/material.dart';

Widget NumerologyPinnacleRow(String title, String value) {
  return Row(
    children: [
      Expanded(
        child: Text(
          title,
          style: TextStyle(
            color: Color(0xFFFFC700),
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      Container(
        width: 80,
        height: 58,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
          child: Text(
            value,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget NumerologyCycleRow(String title, String value) {
  return Row(
    children: [
      Expanded(
        child: Text(
          title,
          style: TextStyle(
            color: Color(0xFFFFC700),
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      Container(
        width: 80,
        height: 58,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
          child: Text(
            value,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget NumerologyRow(
  String title,
  String value,
) {
  return Row(
    children: [
      Expanded(
        child: Text(
          title,
          style: TextStyle(
            color: Color(0xFFFFC700),
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      Spacer(),
      Container(
        width: 80,
        height: 58,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
          child: Text(
            value,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    ],
  );
}