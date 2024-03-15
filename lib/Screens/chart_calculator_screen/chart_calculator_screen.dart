import 'package:flutter/material.dart';
import 'package:soul_meet_num/Routes/routes_helpers.dart';
import 'package:get/get.dart';
import 'package:soul_meet_num/Widgets/chartCalculator/ChartCalculator.dart';

class ChartCalculatorScreen extends StatefulWidget {
  const ChartCalculatorScreen({super.key});

  @override
  State<ChartCalculatorScreen> createState() => _ChartCalculatorScreenState();
}

class _ChartCalculatorScreenState extends State<ChartCalculatorScreen> {
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
                crossAxisAlignment:
                    CrossAxisAlignment.start,
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
                  Padding(
                    padding: EdgeInsets.only(
                        top: 32, left: 40), 
                    child: Text(
                      'Chart Calculator',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 34,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
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
                      size: Size(size.width,
                          screenHeight / 1.3), 
                      painter: BNBCustomPainter(),
                    ),
                    Center(
                      heightFactor: 0.6,
                      child: Container(
                        width: 40, 
                        height: 40,
                        child:
                            Image.asset('indicator.png', fit: BoxFit.contain),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Column(
                            children: [
                              Container(
                                width: 295,
                                height: 68,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 295,
                                        height: 68,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1,
                                                color: Color(0xFFE8E6EA)),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 295,
                                        height: 27,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFFFC700),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(9)),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 89,
                                      top: 2,
                                      child: Text(
                                        'Current Name',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 88,
                                      top: 34,
                                      child: Text(
                                        'Martine Sajous',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Container(
                                width: 295,
                                height: 68,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 295,
                                        height: 68,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1,
                                                color: Color(0xFFE8E6EA)),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 295,
                                        height: 27,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFFFC700),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(9)),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 74,
                                      top: 2,
                                      child: Text(
                                        'Full Name at Birth',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 46,
                                      top: 34,
                                      child: Text(
                                        'Martine Alexandre Sajous',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Container(
                                width: 295,
                                height: 68,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 295,
                                        height: 68,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1,
                                                color: Color(0xFFE8E6EA)),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 295,
                                        height: 27,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFFFC700),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(9)),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 97,
                                      top: 2,
                                      child: Text(
                                        'Date of Birth',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 82,
                                      top: 34,
                                      child: Text(
                                        'October 30, 1997',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 29,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 50.0, right: 50.0),
                                child: Column(
                                  children: [
                                    NumerologyRow('Life Path Number', '12/3'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Birthday Number', '30/3'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Expression / Destiny', '15/6'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Minor Expression / Destiny', '12/3'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Soul Urge /  Heart’s Desire', '7'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Minor Soul Urge / Heart’s Desire', '10/1'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Personality', '14/5'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Minor Personality', '4'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Maturity', '2'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Maturity', '2'), 
                                    SizedBox(height: 14),
                                    NumerologyRow('Life Path/Expression Bridge Number', '3'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Heart’s Desire/ Personality Bridge, Planes of Expression', '4'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Rational Thought Number', '2'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Balance Number', '6'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Subconscious Self Number', '7'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Karmic Lesson', '2, 8'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Hidden Passion', '3, 5, 6'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Hereditary Name', '3'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Physical Plane of Expression', '9'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Mental Plane of Expression', '25/7'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Intuitive Plane of Expression', '10/1'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Intuitive Plane of Expression', '10/1'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Emotional Plane of Expression', '12/3'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Cornerstone', 'M'),
                                    SizedBox(height: 20),
                                  SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'Chapters of Your Life',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left, 
                                      ),
                                    ),
                                    SizedBox(height: 14),
                                    NumerologyCycleRow('First Period Cycle (From Birth to Age 33)', '1'),
                                    SizedBox(height: 14),
                                    NumerologyCycleRow('Second Period Cycle (From Age 34 to Age 60)', '3'),
                                    SizedBox(height: 14),
                                    NumerologyCycleRow('Third Period Cycle (From Age 61 and on)', '8'),
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'Seasons of Your Life',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left, 
                                      ),
                                    ),
                                  SizedBox(height: 14),
                                  NumerologyPinnacleRow('First Pinnacle Number (From Birth to age 33)', '4'),
                                  SizedBox(height: 14),
                                  NumerologyPinnacleRow('Second Pinnacle Number (From age 34 to age 42)', '11'),
                                  SizedBox(height: 14),
                                  NumerologyPinnacleRow('Third Pinnacle Number (From age 43 to age 51)', '6'),
                                  SizedBox(height: 14),
                                  NumerologyPinnacleRow('Fourth Pinnacle Number (From age 53 and on)', '9'),
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'Your Challenges in Life',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign
                                            .left,
                                      ),
                                    ),
                                    SizedBox(height: 14),
                                    NumerologyPinnacleRow('First Pinnacle Number (From Birth to age 33)', '4'),
                                    SizedBox(height: 14),
                                    NumerologyPinnacleRow('Second Pinnacle Number (From age 34 to age 42)', '11'),
                                    SizedBox(height: 14),
                                    NumerologyPinnacleRow('Third Pinnacle Number (From age 43 to age 51)', '6'),
                                    SizedBox(height: 14),
                                    NumerologyPinnacleRow('Fourth Pinnacle Number (From age 53 and on)', '9'),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,                                         children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 30.0,
                                                horizontal: 5.0),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Get.offNamed(RouteHelper
                                                    .getCoupleMatchScreen());
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Color(0xFFFFC700),
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
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ),
          ],
        ),
      )
    );
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
