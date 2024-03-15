import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 40),
        Container(
          width: 295,
          height: 69,
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
                                  child: Stack(children: []),
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
                left: 72,
                top: 43,
                child: SizedBox(
                  width: 151,
                  child: Text(
                    'Twin flame match \n',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.699999988079071),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 20,
                child: SizedBox(
                  width: 151,
                  child: Text(
                    'Suggested',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
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
                              side: BorderSide(
                                  width: 1, color: Color(0xFFE8E6EA)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Center(
                            child: IconButton(
                              iconSize: 20,
                              icon: const Icon(
                                Icons.arrow_back_ios,
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
                        left: 38,
                        top: 38,
                        child: Transform(
                          transform: Matrix4.identity()
                            ..translate(0.0, 0.0)
                            ..rotateZ(-3.14),
                          child: Container(
                            width: 24,
                            height: 24,
                            child: Stack(children: []),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: 295,
          height: 466,
          child: Stack(
            children: [
              Positioned(
                left: 32,
                top: 0,
                child: Opacity(
                  opacity: 0.30,
                  child: Container(
                    width: 231,
                    height: 450,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 231,
                            height: 450,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage("photo-main.png"),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
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
                top: 16,
                child: Container(
                  width: 295,
                  height: 450,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 295,
                          height: 450,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage("photo-bg.png"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 62,
                child: SizedBox(
                  width: 263,
                  child: Text(
                    'Jessica Parker, 23',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0.06,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 82,
                child: SizedBox(
                  width: 263,
                  child: Text(
                    'Professional model',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.11,
                    ),
                  ),
                ),
              ),
              Container(
                width: 295,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 230,
                      child: Container(
                        width: 295,
                        height: 239,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.8999999761581421),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 180,
                      top: 250,
                      child: Container(
                        width: 50,
                        height: 205,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFC700),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 280,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Life Path',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.28,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Birthday',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.28,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Expression/ Destiny',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.28,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Soul Urge/ Hearts Desire',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.28,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Personality',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.28,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 191,
                      top: 280,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '12/3',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.28,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            '30/3',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.28,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            '15/6',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.28,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            '7',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.28,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            '14/5',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.28,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 245,
                      top: 280,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '16/7',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.28,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            '30/3',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.28,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            '15/6',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.28,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            '7',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.28,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            '14/5',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.28,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Stack(
              children: [
                Container(
                 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            'close-small.png',
                          )),
                      CircleAvatar(
                          radius: 70, 
                          backgroundColor: Colors.yellow,
                          child: Image.asset(
                            'love.png',
                          )),
                      CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            'star.png',
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
