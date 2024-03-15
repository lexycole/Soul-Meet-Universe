import 'package:flutter/material.dart';

class TwinFlameMatchProfileScreen extends StatefulWidget {
  const TwinFlameMatchProfileScreen({super.key});

  @override
  State<TwinFlameMatchProfileScreen> createState() => _TwinFlameMatchProfileScreenState();
}

class _TwinFlameMatchProfileScreenState extends State<TwinFlameMatchProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 1257,
          child: Stack(
              children: [
                  Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 415,
                          child: Stack(
                              children: [
                                  Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          height: 415,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage("photo2.png"),
                                                  fit: BoxFit.fill,
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
                      top: 386,
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 939,
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                  ),
                              ),
                          ),
                      ),
                  ),
                  Positioned(
                      left: 40,
                      top: 1106,
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 108,
                          child: Stack(
                              children: [
                                  Positioned(
                                      left: 102,
                                      top: 76,
                                      child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          height: 32,
                                          child: Stack(
                                              children: [
                                                  Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                          width: 92,                                                         
                                                          height: 32,
                                                          decoration: ShapeDecoration(
                                                              color: Colors.white,
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                                                                  borderRadius: BorderRadius.circular(5),
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                                  
                                                  Positioned(
                                                      left: 8,
                                                      top: 5,
                                                      child:Center(child:Text(
                                                              'Modeling',
                                                              textAlign: TextAlign.center,
                                                              style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 14,
                                                                  fontFamily: 'Poppins',
                                                                  fontWeight: FontWeight.w400,
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
                                      top: 76,
                                      child: Container(
                                          width: 92,
                                          height: 32,
                                          child: Stack(
                                              children: [
                                                  Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                          width: 92,
                                                          height: 32,
                                                          decoration: ShapeDecoration(
                                                              color: Colors.white,
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                                                                  borderRadius: BorderRadius.circular(5),
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 8,
                                                      top: 5,
                                                      child: SizedBox(
                                                          width: 76,
                                                          child: Text(
                                                              'Dancing',
                                                              textAlign: TextAlign.center,
                                                              style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 14,
                                                                  fontFamily: 'Poppins',
                                                                  fontWeight: FontWeight.w400,
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                              ],
                                          ),
                                      ),
                                  ),
                                  Positioned(
                                      left: 203,
                                      top: 34,
                                      child: Container(
                                          width: 92,
                                          height: 32,
                                          child: Stack(
                                              children: [
                                                  Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                          width: 92,
                                                          height: 32,
                                                          decoration: ShapeDecoration(
                                                              color: Colors.white,
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                                                                  borderRadius: BorderRadius.circular(5),
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 8,
                                                      top: 5,
                                                      child: SizedBox(
                                                          width: 76,
                                                          child: Text(
                                                              'Music',
                                                              textAlign: TextAlign.center,
                                                              style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 14,
                                                                  fontFamily: 'Poppins',
                                                                  fontWeight: FontWeight.w400,
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                              ],
                                          ),
                                      ),
                                  ),
                                  Positioned(
                                      left: 102,
                                      top: 34,
                                      child: Container(
                                          width: 91,
                                          height: 32,
                                          child: Stack(
                                              children: [
                                                  Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                          width: 91,
                                                          height: 32,
                                                          decoration: ShapeDecoration(
                                                              color: Colors.white,
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(width: 1, color: Color(0xFFFFC700)),
                                                                  borderRadius: BorderRadius.circular(5),
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 34,
                                                      top: 5,
                                                      child: Text(
                                                          'Books',
                                                          style: TextStyle(
                                                              color: Color(0xFFFFC700),
                                                              fontSize: 14,
                                                              fontFamily: 'Poppins',
                                                              fontWeight: FontWeight.w700,
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 16,
                                                      top: 8,
                                                      child: Container(
                                                          width: 16,
                                                          height: 16,
                                                          child: Stack(
                                                            children: [
                                                              Center(
                                                                  child: Image.asset(
                                                                    'done-all.png', 
                                                                    width: 24, 
                                                                    height: 24,
                                                                  ),
                                                                ),
                                                          ]),
                                                      ),
                                                  ),
                                              ],
                                          ),
                                      ),
                                  ),
                                  Positioned(
                                      left: 0,
                                      top: 34,
                                      child: Container(
                                          width: 97,
                                          height: 32,
                                          child: Stack(
                                              children: [
                                                  Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                          width: 92,
                                                          height: 32,
                                                          decoration: ShapeDecoration(
                                                              color: Colors.white,
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(width: 1, color: Color(0xFFFFC700)),
                                                                  borderRadius: BorderRadius.circular(5),
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 20,
                                                      top: 5,
                                                      child: Text(
                                                          'Travelling',
                                                          style: TextStyle(
                                                              color: Color(0xFFFFC700),
                                                              fontSize: 14,
                                                              fontFamily: 'Poppins',
                                                              fontWeight: FontWeight.w700,
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 6,
                                                      top: 8,
                                                      child: Container(
                                                          width: 16,
                                                          height: 16,
                                                          child: Stack(children: [
                                                          Center(
                                                                  child: Image.asset(
                                                                    'done-all.png', 
                                                                    width: 24, 
                                                                    height: 24,
                                                                  ),
                                                                ),
                                                          
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
                                      child: Text(
                                          'Interests',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
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
                      left: 40,
                      top: 957,
                      child: Container(
                          width: 295,
                          height: 129,
                          child: Stack(
                              children: [
                                  Positioned(
                                      left: 0,
                                      top: 108,
                                      child: Text(
                                          'Read more',
                                          style: TextStyle(
                                              color: Color(0xFFFFC700),
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w700,
                                          ),
                                      ),
                                  ),
                                  Positioned(
                                      left: 0,
                                      top: 24,
                                      child: SizedBox(
                                          width: 295,
                                          child: Text(
                                              'My name is Jessica Parker and I enjoy meeting new people and finding ways to help them have an uplifting experience. I enjoy reading..',
                                              style: TextStyle(
                                                  color: Colors.black.withOpacity(0.699999988079071),
                                                  fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                              ),
                                          ),
                                      ),
                                  ),
                                  Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Text(
                                          'About',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
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
                      left: 40,
                      top: 877,
                      child: Container(
                          width: 295,
                          height: 50,
                          child: Stack(
                              children: [
                                  Positioned(
                                      left: 234,
                                      top: 0,
                                      child: Container(
                                          width: 61,
                                          height: 34,
                                          child: Stack(
                                              children: [
                                                  Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Opacity(
                                                          opacity: 0.10,
                                                          child: Container(
                                                              width: 61,
                                                              height: 34,
                                                              decoration: ShapeDecoration(
                                                                  color: Color(0xFFFFC700),
                                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 26,
                                                      top: 8,
                                                      child: Text(
                                                          '1 km',
                                                          style: TextStyle(
                                                              color: Color(0xFFFFC700),
                                                              fontSize: 12,
                                                              fontFamily: 'Poppins',
                                                              fontWeight: FontWeight.w700,
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 10,
                                                      top: 10,
                                                      child: Container(
                                                          width: 14,
                                                          height: 14,
                                                          child: Stack(children: [
                                                          Center(
                                                                  child: Image.asset(
                                                                    'local-two.png', 
                                                                    width: 24, 
                                                                    height: 24,
                                                                  ),
                                                                ),
                                                          
                                                          ]),
                                                      ),
                                                  ),
                                              ],
                                          ),
                                      ),
                                  ),
                                  Positioned(
                                      left: 0,
                                      top: 29,
                                      child: Text(
                                          'Chicago, IL United States',
                                          style: TextStyle(
                                              color: Colors.black.withOpacity(0.699999988079071),
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                          ),
                                      ),
                                  ),
                                  Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Text(
                                          'Location',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
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
                      left: 40,
                      top: 476,
                      child: Container(
                          width: 295,
                          height: 57,
                          child: Stack(
                              children: [
                                  Positioned(
                                      left: 243,
                                      top: 3,
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
                                                                  side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                                                                  borderRadius: BorderRadius.circular(15),
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
                                                          child: Stack(
                                                            children: [
                                                              Center(
                                                                  child: Image.asset(
                                                                    'send.png', 
                                                                    width: 24, 
                                                                    height: 24,
                                                                  ),
                                                                ),
                                                          ]),
                                                      ),
                                                  ),
                                              ],
                                          ),
                                      ),
                                  ),
                                  Positioned(
                                      left: 0,
                                      top: 36,
                                      child: SizedBox(
                                          width: 250,
                                          child: Text(
                                              'Professional model',
                                              style: TextStyle(
                                                  color: Colors.black.withOpacity(0.699999988079071),
                                                  fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                              ),
                                          ),
                                      ),
                                  ),
                                  Positioned(
                                      left: 0,
                                      top: 0,
                                      child: SizedBox(
                                          width: 250,
                                          child: Text(
                                              'Jessica Parker, 23',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 24,
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
                      top: 337,
                      child: Container(
                          width: 295,
                          height: 99,
                          child: Stack(
                              children: [
                                  Positioned(
                                      left: 98,
                                      top: 0,
                                      child: Container(
                                          width: 99,
                                          height: 99,
                                          child: Stack(
                                              children: [
                                                  Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                          width: 99,
                                                          height: 99,
                                                          decoration: ShapeDecoration(
                                                              color: Color(0xFFFFC700),
                                                              shape: OvalBorder(),
                                                              shadows: [
                                                                  BoxShadow(
                                                                      color: Color(0x33E94057),
                                                                      blurRadius: 15,
                                                                      offset: Offset(0, 15),
                                                                      spreadRadius: 0,
                                                                  )
                                                              ],
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 24,
                                                      top: 24,
                                                      child: Container(
                                                          width: 51,
                                                          height: 51,
                                                          child: Stack(children: [
                                                          Image.asset('love.png',)                                                    ,
                                                          ]),
                                                      ),
                                                  ),
                                              ],
                                          ),
                                      ),
                                  ),
                                  Positioned(
                                      left: 217,
                                      top: 10,
                                      child: Container(
                                          width: 78,
                                          height: 78,
                                          child: Stack(
                                              children: [
                                                  Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                          width: 78,
                                                          height: 78,
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
                                                  Positioned(
                                                      left: 24,
                                                      top: 24,
                                                      child: Container(
                                                          width: 30,
                                                          height: 30,
                                                          child: Stack(children: [
                                                            Image.asset('star.png')
                                                          ]),
                                                      ),
                                                  ),
                                              ],
                                          ),
                                      ),
                                  ),
                                  Positioned(
                                      left: 0,
                                      top: 10,
                                      child: Container(
                                          width: 78,
                                          height: 78,
                                          child: Stack(
                                              children: [
                                                  Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                          width: 78,
                                                          height: 78,
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
                                                  Positioned(
                                                      left: 24,
                                                      top: 24,
                                                      child: Container(
                                                          width: 30,
                                                          height: 30,
                                                          child: Stack(children: [
                                                            Image.asset('close-small.png',)
                                                          ]),
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
                      left: 40,
                      top: 44,
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
                                          color: Colors.white.withOpacity(0.20000000298023224),
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                                              borderRadius: BorderRadius.circular(15),
                                          ),
                                      ),
                                    child: Center(
                                      child: IconButton(
                                        iconSize: 24,
                                        icon: Icon(
                                          Icons.arrow_back_ios,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                          ),
                      ),
                  ),
                  Positioned(
                      left: 108,
                      top: 818,
                      child: Text.rich(
                          TextSpan(
                              children: [
                                  TextSpan(
                                      text: 'Overall Match: ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                          height: 0.09,
                                      ),
                                  ),
                                  TextSpan(
                                      text: '85%',
                                      style: TextStyle(
                                          color: Color(0xFF05D087),
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                          height: 0.09,
                                      ),
                                  ),
                              ],
                          ),
                      ),
                  ),
                  Positioned(
                      left: 40,
                      top: 560,
                      child: Container(
                          width: 295,
                          height: 231,
                          child: Stack(
                              children: [
                                  Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                          width: 295,
                                          height: 231,
                                          decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                                                  borderRadius: BorderRadius.circular(15),
                                              ),
                                          ),
                                      ),
                                  ),
                                  Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                          width: 295,
                                          height: 37,
                                          decoration: ShapeDecoration(
                                              color: Color(0xFFFFC700),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                              ),
                                          ),
                                      ),
                                  ),
                                  Positioned(
                                      left: 98,
                                      top: 0,
                                      child: Container(
                                          width: 99,
                                          height: 231,
                                          decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                                                  borderRadius: BorderRadius.circular(15),
                                              ),
                                          ),
                                      ),
                                  ),
                                  Positioned(
                                      left: 98,
                                      top: 0,
                                      child: Container(
                                          width: 99,
                                          height: 37,
                                          decoration: ShapeDecoration(
                                              color: Color(0xFFF27121),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(15),
                                                      topRight: Radius.circular(15),
                                                  ),
                                              ),
                                          ),
                                      ),
                                  ),
                                  Positioned(
                                      left: 15,
                                      top: 7,
                                      child: Text(
                                          'Mariah Carey\n27-Mar-1970',
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
                                      left: 113,
                                      top: 7,
                                      child: Text(
                                          'James Parker\n8-Sep-1967',
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
                                      left: 210,
                                      top: 13,
                                      child: Text(
                                          'Compatibility',
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
                                    left: 111,
                                    top: 50,
                                    child: Center(
                                      child: Text(
                                        '9 Life Path',
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
                                    left: 111,
                                    top: 80,
                                    child: Center(
                                      child: Text(
                                        '3 Birthday',
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
                                      left: 8,
                                      top: 102,
                                      child: Container(
                                        width: 279,
                                        height: 24,
                                        decoration: BoxDecoration(color: Color(0x33FFC700)),
                                        child: Center(
                                          child: Text(
                                            '3 Expression',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ), 
                                  Positioned(
                                    left: 8,
                                    top: 133,
                                    child: Container(
                                      width: 279,
                                      height: 24,
                                      decoration: BoxDecoration(color: Color(0x33FFC700)),
                                      child: Center(
                                        child: Text(
                                          '7 Heart’s Desire',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),                                                            
                                Positioned(
                                    left: 111,
                                    top: 170, 
                                    child: Text(
                                      '8 Personality',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 8,
                                    top: 192,
                                    child: Container(
                                      width: 279,
                                      height: 24,
                                      decoration: BoxDecoration(color: Color(0x33FFC700)),
                                      child: Center(
                                        child: Text(
                                          '9 Maturity',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                              Positioned(
                                    left: 209,
                                    top: 45, 
                                    child: Text(
                                      'Challenge',
                                      style: TextStyle(
                                            color: Color(0xFFF27121),
                                            fontSize: 10,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                        ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 209,
                                    top: 80,
                                    child: Center(
                                      child: Text(
                                        'Challenge',
                                        style: TextStyle(
                                          color: Color(0xFFF27121),
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),  
                              Positioned(
                                    left: 209,
                                    top: 105,
                                    child: Center(
                                      child: Text(
                                        'Perfect Match',
                                        style: TextStyle(
                                          color: Color(0xFF05D087),
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 209,
                                    top: 140, 
                                    child: Text(
                                      'Perfect Match',
                                      style: TextStyle(
                                            color: Color(0xFF05D087),                                           
                                            fontSize: 10,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                        ),
                                    ),
                                  ), 
                                    Positioned(
                                    left: 209,
                                    top: 170, 
                                    child: Text(
                                      'Challenge',
                                      style: TextStyle(
                                            color: Color(0xFFF27121),
                                            fontSize: 10,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                        ),
                                    ),
                                  ),
                                    Positioned(
                                    left: 209,
                                    top: 197, 
                                    child: Text(
                                      'Perfect Match',
                                      style: TextStyle(
                                            color: Color(0xFF05D087), 
                                            fontSize: 10,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                        ),
                                    ),
                                  ),                            
                                Positioned(
                                  left: 13,
                                  top: 43,
                                  child: Container(
                                    width: 79,
                                    height: 24,
                                    child: Center(
                                      child: Text(
                                        '8 Life Path',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),                                 
                                Positioned(
                                  left: 13,
                                  top: 75,
                                  child: Container(
                                    width: 79,
                                    height: 24,
                                    child: Center(
                                      child: Text(
                                        '4 Birthday',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ), 
                                Positioned(
                                  left: 13,
                                  top: 102,
                                  child: Container(
                                    width: 79,
                                    height: 24,
                                    child: Center(
                                      child: Text(
                                        '3 Expression',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 13,
                                  top: 137,
                                  child:  Center(
                                      child: Text(
                                        '7 Heart’s Desire',
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
                                  left: 13,
                                  top: 165,
                                  child: Container(
                                    width: 79,
                                    height: 24,
                                    child: Center(
                                      child: Text( 
                                        '9 Personality',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 13,
                                  top: 193,
                                  child: Container(
                                    width: 79,
                                    height: 24,
                                    child: Center(
                                      child: Text(
                                        '9 Maturity',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              
                                  Positioned(
                                      left: 8,
                                      top: 70,
                                      child: Container(
                                          width: 83,
                                          height: 120,
                                          child: Stack(
                                              children: [
                                                  Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                          width: 83,
                                                          decoration: ShapeDecoration(
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      width: 1,
                                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                                      color: Colors.black.withOpacity(0.10000000149011612),
                                                                  ),
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 0,
                                                      top: 30,
                                                      child: Container(
                                                          width: 83,
                                                          decoration: ShapeDecoration(
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      width: 1,
                                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                                      color: Colors.black.withOpacity(0.10000000149011612),
                                                                  ),
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 0,
                                                      top: 60,
                                                      child: Container(
                                                          width: 83,
                                                          decoration: ShapeDecoration(
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      width: 1,
                                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                                      color: Colors.black.withOpacity(0.10000000149011612),
                                                                  ),
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 0,
                                                      top: 90,
                                                      child: Container(
                                                          width: 83,
                                                          decoration: ShapeDecoration(
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      width: 1,
                                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                                      color: Colors.black.withOpacity(0.10000000149011612),
                                                                  ),
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 0,
                                                      top: 120,
                                                      child: Container(
                                                          width: 83,
                                                          decoration: ShapeDecoration(
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      width: 1,
                                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                                      color: Colors.black.withOpacity(0.10000000149011612),
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
                                      left: 106,
                                      top: 70,
                                      child: Container(
                                          width: 83,
                                          height: 120,
                                          child: Stack(
                                              children: [
                                                  Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                          width: 83,
                                                          decoration: ShapeDecoration(
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      width: 1,
                                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                                      color: Colors.black.withOpacity(0.10000000149011612),
                                                                  ),
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 0,
                                                      top: 30,
                                                      child: Container(
                                                          width: 83,
                                                          decoration: ShapeDecoration(
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      width: 1,
                                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                                      color: Colors.black.withOpacity(0.10000000149011612),
                                                                  ),
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 0,
                                                      top: 60,
                                                      child: Container(
                                                          width: 83,
                                                          decoration: ShapeDecoration(
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      width: 1,
                                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                                      color: Colors.black.withOpacity(0.10000000149011612),
                                                                  ),
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 0,
                                                      top: 90,
                                                      child: Container(
                                                          width: 83,
                                                          decoration: ShapeDecoration(
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      width: 1,
                                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                                      color: Colors.black.withOpacity(0.10000000149011612),
                                                                  ),
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 0,
                                                      top: 120,
                                                      child: Container(
                                                          width: 83,
                                                          decoration: ShapeDecoration(
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      width: 1,
                                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                                      color: Colors.black.withOpacity(0.10000000149011612),
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
                                      left: 204,
                                      top: 70,
                                      child: Container(
                                          width: 83,
                                          height: 120,
                                          child: Stack(
                                              children: [
                                                  Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                          width: 83,
                                                          decoration: ShapeDecoration(
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      width: 1,
                                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                                      color: Colors.black.withOpacity(0.10000000149011612),
                                                                  ),
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 0,
                                                      top: 30,
                                                      child: Container(
                                                          width: 83,
                                                          decoration: ShapeDecoration(
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      width: 1,
                                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                                      color: Colors.black.withOpacity(0.10000000149011612),
                                                                  ),
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 0,
                                                      top: 60,
                                                      child: Container(
                                                          width: 83,
                                                          decoration: ShapeDecoration(
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      width: 1,
                                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                                      color: Colors.black.withOpacity(0.10000000149011612),
                                                                  ),
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 0,
                                                      top: 90,
                                                      child: Container(
                                                          width: 83,
                                                          decoration: ShapeDecoration(
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      width: 1,
                                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                                      color: Colors.black.withOpacity(0.10000000149011612),
                                                                  ),
                                                              ),
                                                          ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                      left: 0,
                                                      top: 120,
                                                      child: Container(
                                                          width: 83,
                                                          decoration: ShapeDecoration(
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      width: 1,
                                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                                      color: Colors.black.withOpacity(0.10000000149011612),
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
      )
        );
  }
}
