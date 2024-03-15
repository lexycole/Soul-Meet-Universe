import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soul_meet_num/Routes/routes_helpers.dart';

Widget buildCustomDialog(BuildContext context) {
  return Dialog(
    child: SizedBox(
      width: 300,
      height: 500,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Text(
              'Select One',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 34,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              
                GestureDetector(
                  onTap: () {
                    Get.offNamed(RouteHelper.getCoupleMatchScreen());
                  },
                  child: Container(
                    width: 122,
                    height: 153,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 122,
                            height: 153,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFFE8E6EA)),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 27,
                          top: 107,
                          child: Text(
                            'Twin flame \nmatch',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 26,
                          top: 19,
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "twin_flame.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    Get.offNamed(RouteHelper.getTwoFlamesMatchProfileScreen());
                  },
                  child: Container(
                    width: 122,
                    height: 153,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 122,
                            height: 153,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFFE8E6EA)),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 27,
                          top: 107,
                          child: Text(
                            'Couple match',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 26,
                          top: 19,
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "couple_match.png"),
                                fit: BoxFit.fill,
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
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Get.offNamed(RouteHelper.getTwoFlamesMatchProfileScreen());
              },
              child: Container(
                width: 122,
                height: 153,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 122,
                        height: 153,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 27,
                      top: 107,
                      child: Text(
                        'Connect with \nOther Users',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 26,
                      top: 19,
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "network.png"),
                            fit: BoxFit.fill,
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
  );
}
