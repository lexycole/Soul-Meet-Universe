import 'package:flutter/material.dart';

class RateThisAppScreen extends StatefulWidget {
  const RateThisAppScreen({super.key});

  @override
  State<RateThisAppScreen> createState() => _RateThisAppScreenState();
}

class _RateThisAppScreenState extends State<RateThisAppScreen> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
              children: [
                  Positioned(
                      left: 34,
                      top: 44,
                      child: Container(
                          width: 291,
                          height: 102,
                          child: Stack(
                              children: [
                                  Positioned(
                                      left: 239,
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
                                  Positioned(
                                      left: 0,
                                      top: 0,
                                      child: SizedBox(
                                          width: 199,
                                          child: Text(
                                              'Rate This App',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 34,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
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
                      top: 778,
                      child: Container(
                          width: 375,
                          height: 34,
                          decoration: BoxDecoration(color: Color(0xFFF3F3F3)),
                          child: Stack(
                              children: [
                                  Positioned(
                                      left: 120,
                                      top: 21,
                                      child: Container(
                                          width: 134,
                                          height: 5,
                                          decoration: ShapeDecoration(
                                              color: Colors.black,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(100),
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
                      top: 730,
                      child: Container(
                          width: 375,
                          height: 48,
                          child: Stack(
                              children: [
                                  Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                          width: 375,
                                          height: 1,
                                          decoration: BoxDecoration(color: Color(0xFFE8E6EA)),
                                      ),
                                  ),
                                  Positioned(
                                      left: 291,
                                      top: 0,
                                      child: Container(
                                          width: 60,
                                          height: 48,
                                          child: Stack(
                                              children: [
                                                  Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(width: 60, height: 48),
                                                  ),
                                                  Positioned(
                                                      left: 18,
                                                      top: 12,
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
                                  Positioned(
                                      left: 202,
                                      top: 0,
                                      child: Container(
                                          width: 60,
                                          height: 48,
                                          child: Stack(
                                              children: [
                                                  Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(width: 60, height: 48),
                                                  ),
                                                  Positioned(
                                                      left: 18,
                                                      top: 12,
                                                      child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          child: Stack(children: [
                                                          
                                                          ]),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                          width: 60,
                                                          height: 1,
                                                          decoration: BoxDecoration(color: Color(0xFFFFC700)),
                                                      ),
                                                  ),
                                              ],
                                          ),
                                      ),
                                  ),
                                  Positioned(
                                      left: 113,
                                      top: 0,
                                      child: Container(
                                          width: 60,
                                          height: 48,
                                          child: Stack(
                                              children: [
                                                  Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(width: 60, height: 48),
                                                  ),
                                                  Positioned(
                                                      left: 18,
                                                      top: 12,
                                                      child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          child: Stack(
                                                              children: [
                                                                  Positioned(
                                                                      left: 16,
                                                                      top: 2,
                                                                      child: Container(
                                                                          width: 8,
                                                                          height: 8,
                                                                          decoration: ShapeDecoration(
                                                                              color: Color(0xFFFFC700),
                                                                              shape: OvalBorder(
                                                                                  side: BorderSide(
                                                                                      width: 2,
                                                                                      strokeAlign: BorderSide.strokeAlignOutside,
                                                                                      color: Color(0xFFF3F3F3),
                                                                                  ),
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
                                      left: 24,
                                      top: 0,
                                      child: Container(
                                          width: 60,
                                          height: 48,
                                          child: Stack(
                                              children: [
                                                  Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(width: 60, height: 48),
                                                  ),
                                                  Positioned(
                                                      left: 18,
                                                      top: 12,
                                                      child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          clipBehavior: Clip.antiAlias,
                                                          decoration: BoxDecoration(),
                                                          child: Stack(
                                                              children: [
                                                                  Positioned(
                                                                      left: 0.39,
                                                                      top: 1.12,
                                                                      child: Container(
                                                                          width: 22.11,
                                                                          height: 21.37,
                                                                          child: Stack(
                                                                              children: [
                                                                                  Positioned(
                                                                                      left: 9.11,
                                                                                      top: 3.37,
                                                                                      child: Container(
                                                                                          width: 13,
                                                                                          height: 18,
                                                                                          decoration: ShapeDecoration(
                                                                                              color: Color(0xFFADAFBB),
                                                                                              shape: RoundedRectangleBorder(
                                                                                                  side: BorderSide(
                                                                                                      width: 1,
                                                                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                                                                      color: Color(0xFFF3F3F3),
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(2),
                                                                                              ),
                                                                                          ),
                                                                                      ),
                                                                                  ),
                                                                                  Positioned(
                                                                                      left: 0,
                                                                                      top: 3.36,
                                                                                      child: Transform(
                                                                                          transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.26),
                                                                                          child: Container(
                                                                                              width: 13,
                                                                                              height: 18,
                                                                                              decoration: ShapeDecoration(
                                                                                                  color: Color(0xFFADAFBB),
                                                                                                  shape: RoundedRectangleBorder(
                                                                                                      side: BorderSide(
                                                                                                          width: 1,
                                                                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                                                                          color: Color(0xFFF3F3F3),
                                                                                                      ),
                                                                                                      borderRadius: BorderRadius.circular(2),
                                                                                                  ),
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
                                              ],
                                          ),
                                      ),
                                  ),
                              ],
                          ),
                      ),
                  ),
                  Positioned(
                      left: 30,
                      top: 309,
                      child: Container(
                          width: 295,
                          height: 56,
                          child: Stack(
                              children: [
                                  Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                          width: 295,
                                          height: 56,
                                          decoration: ShapeDecoration(
                                              color: Color(0xFFFFC700),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                              ),
                                          ),
                                      ),
                                  ),
                                  Positioned(
                                      left: 32,
                                      top: 16,
                                      child: SizedBox(
                                          width: 231,
                                          child: TextButton(
                                    onPressed: () {
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      padding: EdgeInsets.zero, 
                                    ),
                                    child: SizedBox(
                                      width: 231,
                                      child: Text(
                                        'Submit',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                          height:0.09,
                                        ),
                                      ),
                                    ),
                                  ),
                                      ),
                                  ),
                              ],
                          ),
                      ),
                  ),
                  Positioned(
                      left: 34,
                      top: 195,
                      child: Container(
                          width: 58,
                          height: 58,
                          decoration: ShapeDecoration(
                          color: Color(0xFFFFC700),
                          shape: StarBorder(
                            points: 5,
                            innerRadiusRatio: 0.38,
                            pointRounding: 0.5,
                            valleyRounding: 0,
                            rotation: 0,
                            squash: 0,
                          ),
                        )
                      ),
                  ),
                  Positioned(
                      left: 92,
                      top: 195,
                      child: Container(
                          width: 58,
                          height: 58,
                          decoration: ShapeDecoration(
                          color: Color(0xFFFFC700),
                          shape: StarBorder(
                            points: 5,
                            innerRadiusRatio: 0.38,
                            pointRounding: 0.5, 
                            valleyRounding: 0,
                            rotation: 0,
                            squash: 0,
                          ),
                        )
                      ),
                  ),
                  Positioned(
                      left: 150,
                      top: 195,
                      child: Container(
                          width: 59,
                          height: 58,
                          decoration: ShapeDecoration(
                              color: Color(0xFFFFC700),
                              shape: StarBorder(
                                  points: 5,
                                  innerRadiusRatio: 0.38,
                                  pointRounding: 0.5,
                                  valleyRounding: 0,
                                  rotation: 0,
                                  squash: 0,
                              ),
                          ),
                      ),
                  ),
                  Positioned(
                      left: 209,
                      top: 195,
                      child: Container(
                          width: 58,
                          height: 58,
                          decoration: ShapeDecoration(
                              color: Color(0xFFFFC700),
                              shape: StarBorder(
                                  points: 5,
                                  innerRadiusRatio: 0.38,
                                  pointRounding: 0.5,
                                  valleyRounding: 0,
                                  rotation: 0,
                                  squash: 0,
                              ),
                          ),
                      ),
                  ),
                  Positioned(
                      left: 267,
                      top: 195,
                      child: Container(
                          width: 58,
                          height: 58,
                          decoration: ShapeDecoration(
                              color: Color(0xFFFFC700),
                              shape: StarBorder(
                                  points: 5,
                                  innerRadiusRatio: 0.38,
                                  pointRounding: 0.5,
                                  valleyRounding: 0,
                                  rotation: 0,
                                  squash: 0,
                              ),
                          ),
                      ),
                  ),
              ],
            ),
          )
    );
  }
}