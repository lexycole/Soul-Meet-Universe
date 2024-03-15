import 'package:flutter/material.dart';
import 'package:soul_meet_num/Widgets/chartCalculator/dialog_chart_calculator.dart';

class ChartCalculatorTwoScreen extends StatefulWidget {
  const ChartCalculatorTwoScreen({super.key});

  @override
  State<ChartCalculatorTwoScreen> createState() =>
      _ChartCalculatorTwoScreenState();
}

class _ChartCalculatorTwoScreenState extends State<ChartCalculatorTwoScreen> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final screenHeight = size.height;
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0x99FF9800), Colors.white, Color(0x66FFC46D)],
          stops: [-0.5, 0.4, 3.0],
          tileMode: TileMode.repeated,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 50, 
            left: 20,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 52,
                    height: 52,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
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
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: screenHeight / 1.3,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, screenHeight / 1.1),
                    painter: BNBCustomPainter(),
                  ),
                  Center(
                    heightFactor: 0.6,
                    child: Container(
                      width: 40, 
                      height: 40,
                      child: Image.asset('indicator.png', fit: BoxFit.contain),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Center(
                        child: Column(children: [
                          Text(
                            'Percentage of Your Numbers',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            width: 295,
                            height: 57,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 33,
                                    height: 57,
                                    decoration: ShapeDecoration(
                                      color: Color(0x33C4C4C4),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 33,
                                  top: 0,
                                  child: Container(
                                    width: 33,
                                    height: 57,
                                    decoration: ShapeDecoration(
                                      color: Color(0x33C4C4C4),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 66,
                                  top: 0,
                                  child: Container(
                                    width: 32,
                                    height: 57,
                                    decoration: ShapeDecoration(
                                      color: Color(0x33C4C4C4),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 98,
                                  top: 0,
                                  child: Container(
                                    width: 33,
                                    height: 57,
                                    decoration: ShapeDecoration(
                                      color: Color(0x33C4C4C4),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 131,
                                  top: 0,
                                  child: Container(
                                    width: 33,
                                    height: 57,
                                    decoration: ShapeDecoration(
                                      color: Color(0x33C4C4C4),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 164,
                                  top: 0,
                                  child: Container(
                                    width: 33,
                                    height: 57,
                                    decoration: ShapeDecoration(
                                      color: Color(0x33C4C4C4),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 197,
                                  top: 0,
                                  child: Container(
                                    width: 32,
                                    height: 57,
                                    decoration: ShapeDecoration(
                                      color: Color(0x33C4C4C4),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 229,
                                  top: 0,
                                  child: Container(
                                    width: 33,
                                    height: 57,
                                    decoration: ShapeDecoration(
                                      color: Color(0x33C4C4C4),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 262,
                                  top: 0,
                                  child: Container(
                                    width: 33,
                                    height: 57,
                                    decoration: ShapeDecoration(
                                      color: Color(0x33C4C4C4),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 295,
                                    height: 25,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 33,
                                            height: 25,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFFC700),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 2,
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 33,
                                          top: 0,
                                          child: Container(
                                            width: 33,
                                            height: 25,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFFC700),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 2,
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 66,
                                          top: 0,
                                          child: Container(
                                            width: 32,
                                            height: 25,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFFC700),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 2,
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 98,
                                          top: 0,
                                          child: Container(
                                            width: 33,
                                            height: 25,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFFC700),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 2,
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 131,
                                          top: 0,
                                          child: Container(
                                            width: 33,
                                            height: 25,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFFC700),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 2,
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 164,
                                          top: 0,
                                          child: Container(
                                            width: 33,
                                            height: 25,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFFC700),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 2,
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 197,
                                          top: 0,
                                          child: Container(
                                            width: 32,
                                            height: 25,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFFC700),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 2,
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 229,
                                          top: 0,
                                          child: Container(
                                            width: 33,
                                            height: 25,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFFC700),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 2,
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 262,
                                          top: 0,
                                          child: Container(
                                            width: 33,
                                            height: 25,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFFC700),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 2,
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 15,
                                  top: 5,
                                  child: Container(
                                    width: 268,
                                    height: 15,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Text(
                                            '1',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 32,
                                          top: 0,
                                          child: Text(
                                            '2',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 64,
                                          top: 0,
                                          child: Text(
                                            '3',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 97,
                                          top: 0,
                                          child: Text(
                                            '4',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 130,
                                          top: 0,
                                          child: Text(
                                            '5',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 163,
                                          top: 0,
                                          child: Text(
                                            '6',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 195,
                                          top: 0,
                                          child: Text(
                                            '7',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 228,
                                          top: 0,
                                          child: Text(
                                            '8',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 261,
                                          top: 0,
                                          child: Text(
                                            '9',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 31,
                                  child: Container(
                                    width: 280,
                                    height: 15,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Text(
                                            '10%',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 33,
                                          top: 0,
                                          child: Text(
                                            '15%',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 67,
                                          top: 0,
                                          child: Text(
                                            '2%',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 98,
                                          top: 0,
                                          child: Text(
                                            '17%',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 134,
                                          top: 0,
                                          child: Text(
                                            '1%',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 164,
                                          top: 0,
                                          child: Text(
                                            '18%',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 198,
                                          top: 0,
                                          child: Text(
                                            '0%',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 228,
                                          top: 0,
                                          child: Text(
                                            '23%',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 262,
                                          top: 0,
                                          child: Text(
                                            '12%',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
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
                          SizedBox(height: 20),
                          Text(
                            'Relationship Compatibility',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            width: 295,
                            height: 43,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 33,
                                    height: 43,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFF3F3F3),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 33,
                                  top: 0,
                                  child: Container(
                                    width: 33,
                                    height: 43,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFF3F3F3),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 66,
                                  top: 0,
                                  child: Container(
                                    width: 32,
                                    height: 43,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFF3F3F3),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 98,
                                  top: 0,
                                  child: Container(
                                    width: 33,
                                    height: 43,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFF3F3F3),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 131,
                                  top: 0,
                                  child: Container(
                                    width: 33,
                                    height: 43,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFF3F3F3),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 164,
                                  top: 0,
                                  child: Container(
                                    width: 33,
                                    height: 43,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFF3F3F3),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 197,
                                  top: 0,
                                  child: Container(
                                    width: 32,
                                    height: 43,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFF3F3F3),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 229,
                                  top: 0,
                                  child: Container(
                                    width: 33,
                                    height: 43,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFF3F3F3),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 262,
                                  top: 0,
                                  child: Container(
                                    width: 33,
                                    height: 43,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFF3F3F3),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 15,
                                  top: 14,
                                  child: Container(
                                    width: 268,
                                    height: 15,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Text(
                                            '1',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 32,
                                          top: 0,
                                          child: Text(
                                            '2',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 64,
                                          top: 0,
                                          child: Text(
                                            '3',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 97,
                                          top: 0,
                                          child: Text(
                                            '4',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 130,
                                          top: 0,
                                          child: Text(
                                            '5',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 163,
                                          top: 0,
                                          child: Text(
                                            '6',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 195,
                                          top: 0,
                                          child: Text(
                                            '7',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 228,
                                          top: 0,
                                          child: Text(
                                            '8',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 261,
                                          top: 0,
                                          child: Text(
                                            '9',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
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
                          SizedBox(height: 20),
                          Text(
                            'Yearly Forecast Cycles at 24 years of age - 2022',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            width: 295,
                            height: 74,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 74.31,
                                    height: 74,
                                    decoration: ShapeDecoration(
                                      color: Color(0x33C4C4C4),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 74.31,
                                  top: 0,
                                  child: Container(
                                    width: 74.31,
                                    height: 74,
                                    decoration: ShapeDecoration(
                                      color: Color(0x33C4C4C4),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 148.63,
                                  top: 0,
                                  child: Container(
                                    width: 72.06,
                                    height: 74,
                                    decoration: ShapeDecoration(
                                      color: Color(0x33C4C4C4),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 220.69,
                                  top: 0,
                                  child: Container(
                                    width: 74.31,
                                    height: 74,
                                    decoration: ShapeDecoration(
                                      color: Color(0x33C4C4C4),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 295,
                                    height: 42,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 74,
                                            height: 42,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFFC700),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 2,
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 74,
                                          top: 0,
                                          child: Container(
                                            width: 75,
                                            height: 42,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFFC700),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 2,
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 149,
                                          top: 0,
                                          child: Container(
                                            width: 72,
                                            height: 42,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFFC700),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 2,
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 221,
                                          top: 0,
                                          child: Container(
                                            width: 74,
                                            height: 42,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFFC700),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 2,
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 15.78,
                                  top: 9.49,
                                  child: Text(
                                    'Physical \nTransit',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 92,
                                  top: 9.49,
                                  child: Text(
                                    'Mental \nTransit',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 163,
                                  top: 9.49,
                                  child: Text(
                                    'Spirtual \nTransit',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 236,
                                  top: 9.49,
                                  child: Text(
                                    'Essence \nCycle',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 18.02,
                                  top: 47.25,
                                  child: Container(
                                    width: 261.22,
                                    height: 19.47,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: SizedBox(
                                            width: 42.79,
                                            height: 19.47,
                                            child: Text(
                                              'I',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 74.31,
                                          top: 0,
                                          child: SizedBox(
                                            width: 42.79,
                                            height: 19.47,
                                            child: Text(
                                              'D',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 150.88,
                                          top: 0,
                                          child: SizedBox(
                                            width: 33.78,
                                            height: 19.47,
                                            child: Text(
                                              'U',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 220.69,
                                          top: 0,
                                          child: SizedBox(
                                            width: 40.53,
                                            height: 19.47,
                                            child: Text(
                                              '8',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
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
                          SizedBox(height: 20),
                          Text(
                            'Yearly/Monthly/Daily Personal Cycles',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            width: 295,
                            height: 74,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 99.20,
                                    height: 74,
                                    decoration: ShapeDecoration(
                                      color: Color(0x33C4C4C4),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 99.20,
                                  top: 0,
                                  child: Container(
                                    width: 99.20,
                                    height: 74,
                                    decoration: ShapeDecoration(
                                      color: Color(0x33C4C4C4),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 198.39,
                                  top: 0,
                                  child: Container(
                                    width: 96.19,
                                    height: 74,
                                    decoration: ShapeDecoration(
                                      color: Color(0x33C4C4C4),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 295,
                                    height: 42,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 98.78,
                                            height: 42,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFFC700),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 2,
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 98.78,
                                          top: 0,
                                          child: Container(
                                            width: 100.11,
                                            height: 42,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFFC700),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 2,
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 198.89,
                                          top: 0,
                                          child: Container(
                                            width: 96.11,
                                            height: 42,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFFC700),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 2,
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 14.06,
                                  top: 9.49,
                                  child: Text(
                                    'Personal Year\n2022',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 108.81,
                                  top: 9.49,
                                  child: Text(
                                    'Personal Month\nFeburary',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 212.58,
                                  top: 9.49,
                                  child: Text(
                                    'Personal Day\nThursday',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 24.05,
                                  top: 47.25,
                                  child: Container(
                                    width: 246.49,
                                    height: 19.47,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: SizedBox(
                                            width: 57.11,
                                            height: 19.47,
                                            child: Text(
                                              '8',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 99.20,
                                          top: 0,
                                          child: SizedBox(
                                            width: 57.11,
                                            height: 19.47,
                                            child: Text(
                                              '4',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 201.40,
                                          top: 0,
                                          child: SizedBox(
                                            width: 45.09,
                                            height: 19.47,
                                            child: Text(
                                              '6',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
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
                          Spacer(),
                          Container(
                            width: 295,
                            height: 156,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 37.0,
                                  child: Container(
                                    width: 295,
                                    height: 56,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFFC700),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return buildCustomDialog(context); 
                                          },
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFFFFC700),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        minimumSize: Size(350, 0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Text(
                                          'Continue',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    Path path = Path();
    path.moveTo(0.0, 0.0);
    path.lineTo(20.0, 0.0);

    path.quadraticBezierTo(80.0, 0.0, 160.0,
        0.0);

    path.arcToPoint(
      Offset(size.width * 0.60,
          0.0),
      radius: Radius.circular(60.0),
      clockwise: false,
    );

    path.lineTo(size.width - 20.0, 0.0);
    path.quadraticBezierTo(size.width, 0.0, size.width, 25.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.lineTo(0.0, 25.0);
    path.quadraticBezierTo(0.0, 0.0, 20.0, 0.0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
