import 'package:flutter/material.dart';

Widget buildCard(String imagePath, String text, TextEditingController searchController) {
  final searchText = searchController.text.toLowerCase();

  if (searchText.isNotEmpty && !text.toLowerCase().contains(searchText)) {
    return Container();
  }
    
  return Stack(
    children: [
      Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          width: 140,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
     
      Positioned(
        left: 10,
        bottom: 0,
        child: Opacity(
          opacity: 1.0,
          child: Stack(
            children: [
              Container(
                width: 140,
                height: 40,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage("mask-photo-2.png"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 70,
                top: 0,
                bottom: 0,
                child: Container(
                  width: 1,
                  color: Colors.white,
                ),
              ),
              Positioned(
                left: 24,
                top: 0,
                bottom: 0,
                child: Container(
                  width: 20,
                  height: 20,
                  child: Image.asset('mask-photo-close-small.png', width: 20, height: 20),
                ),
              ),
              Positioned(
                right: 24,
                top: 0,
                bottom: 0,
                child: Container(
                  width: 20,
                  height: 20,
                  child: Image.asset('mask-photo-like.png', width: 20, height: 20),
                ),
              ),
            ],
          ),
        ),
      ),
     
      Positioned(
        left: 30,
        bottom: 45,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ],
  );
}