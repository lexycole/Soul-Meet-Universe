import 'package:flutter/material.dart';
import 'package:soul_meet_num/Routes/routes_helpers.dart';
import 'package:get/get.dart';
import 'package:soul_meet_num/Widgets/chartCalculator/ChartCalculator.dart';


class TwinFlameMatchScreen extends StatefulWidget {
  const TwinFlameMatchScreen({super.key});

  @override
  State<TwinFlameMatchScreen> createState() => _TwinFlameMatchScreenState();
}

class _TwinFlameMatchScreenState extends State<TwinFlameMatchScreen> {
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
                    padding: EdgeInsets.only(top: 32, left: 35),
                    child: Text(
                      'Twin Flame Match',
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
                    Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Column(
                            children: [ 
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 50.0, right: 50.0),
                                  child: Column(
                                  children: [
                                    NumerologyRow('Life Path Number', '12/3'),                                    
                                    SizedBox(height: 14),
                                    NumerologyRow('Expression / Destiny', '4'),                                   
                                    SizedBox(height: 14),
                                    NumerologyRow('Birthday', '2'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Your Heart’s Desire', '12/3'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Minor Soul Urge / Heart’s Desire', '10/1'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Personality', '12/3'),
                                    SizedBox(height: 14),
                                    NumerologyRow('Maturity', '8'),
                                    ])),
                                      Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start, 
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 25.0,
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
                        ),
                      ),
                    
                  ],
                ),
              )),
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
