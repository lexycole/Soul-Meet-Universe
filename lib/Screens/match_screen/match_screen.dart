import 'package:flutter/material.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({super.key});

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              width: 375,
              height: 812,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: 40,
                    top: 53,
                    child: Container(
                      width: 294.57,
                      height: 403.51,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 137,
                            top: 25,
                            child: Transform(
                              transform: Matrix4.identity()
                                ..translate(0.0, 0.0)
                                ..rotateZ(0.17),
                              child: Container(
                                width: 160,
                                height: 240,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x26000000),
                                      blurRadius: 25,
                                      offset: Offset(0, 25),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 160,
                                        height: 240,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/160x240"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 144.78,
                            child: Transform(
                              transform: Matrix4.identity()
                                ..translate(0.0, 0.0)
                                ..rotateZ(-0.17),
                              child: Container(
                                width: 160,
                                height: 240,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x26000000),
                                      blurRadius: 25,
                                      offset: Offset(0, 25),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 160,
                                        height: 240,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/160x240"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 122.42,
                            top: 0,
                            child: Transform(
                              transform: Matrix4.identity()
                                ..translate(0.0, 0.0)
                                ..rotateZ(0.17),
                              child: Container(
                                width: 60,
                                height: 60,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Transform(
                                        transform: Matrix4.identity()
                                          ..translate(0.0, 0.0)
                                          ..rotateZ(0.17),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: OvalBorder(),
                                            shadows: [
                                              BoxShadow(
                                                color: Color(0x11000000),
                                                blurRadius: 50,
                                                offset: Offset(0, 20),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 11.80,
                                      top: 16.85,
                                      child: Transform(
                                        transform: Matrix4.identity()
                                          ..translate(0.0, 0.0)
                                          ..rotateZ(0.17),
                                        child: Container(
                                          width: 30.91,
                                          height: 30.91,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x33E94057),
                                                blurRadius: 15,
                                                offset: Offset(0, 15),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                          child: Stack(children: []),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            top: 344.42,
                            child: Transform(
                              transform: Matrix4.identity()
                                ..translate(0.0, 0.0)
                                ..rotateZ(-0.17),
                              child: Container(
                                width: 60,
                                height: 60,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Transform(
                                        transform: Matrix4.identity()
                                          ..translate(0.0, 0.0)
                                          ..rotateZ(-0.17),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: OvalBorder(),
                                            shadows: [
                                              BoxShadow(
                                                color: Color(0x11000000),
                                                blurRadius: 50,
                                                offset: Offset(0, 20),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 16.85,
                                      top: 11.80,
                                      child: Transform(
                                        transform: Matrix4.identity()
                                          ..translate(0.0, 0.0)
                                          ..rotateZ(-0.17),
                                        child: Container(
                                          width: 30.91,
                                          height: 30.91,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x33E94057),
                                                blurRadius: 15,
                                                offset: Offset(0, 15),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                          child: Stack(children: []),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 26,
                    top: 460,
                    child: Container(
                      width: 323,
                      height: 72,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 14,
                            top: 51,
                            child: SizedBox(
                              width: 295,
                              child: Text(
                                'Start a conversation now with each other',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black
                                      .withOpacity(0.699999988079071),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0.11,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              'It’s a match, Jake!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFFFC700),
                                fontSize: 34,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 0.04,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 600,
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
                              child: Text(
                                'Say hello',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
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
                    left: 40,
                    top: 690,
                    child: Container(
                      width: 295,
                      height: 56,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Opacity(
                              opacity: 0.10,
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
                          ),
                          Positioned(
                            left: 32,
                            top: 16,
                            child: SizedBox(
                              width: 231,
                              child: Text(
                                'Keep swiping',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFFFC700),
                                  fontSize: 16,
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
                ],
              ),
            )));
  }
}
