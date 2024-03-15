import 'package:flutter/material.dart';
import 'package:soul_meet_num/Services/localization/language_constants.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            width: 375,
            height: 812,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Colors.white),
            child: Stack(
                children: [
                    Positioned(
                        left: 34,
                        top: 44,
                        child: Container(
                            width: 291,
                            height: 52,
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
                                                                            child: Stack(children: [
                                                                            
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
                                        left: 0,
                                        top: 0,
                                        child: SizedBox(
                                            width: 199,
                                            child: Text(
                                                getTranslated(this.context, 'feedback'),
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 34,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0.04,
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
                        top: 341,
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
                                                getTranslated(this.context, 'submit'),
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
                        left: 30,
                        top: 136,
                        child: Container(
                            width: 295,
                            height: 165,
                            child: Stack(
                                children: [
                                    Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                            width: 295,
                                            height: 165,
                                            child: Stack(
                                                children: [
                                                    Positioned(
                                                        left: 0,
                                                        top: 9,
                                                        child: Container(
                                                            width: 295,
                                                            height: 156,
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
                                                        left: 20,
                                                        top: 9,
                                                        child: Container(
                                                            width: 111,
                                                            height: 1,
                                                            decoration: BoxDecoration(color: Colors.white),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 28,
                                                        top: 0,
                                                        child: Text(
                                                            getTranslated(this.context, 'yourcomments'),
                                                            style: TextStyle(
                                                                color: Colors.black.withOpacity(0.4000000059604645),
                                                                fontSize: 12,
                                                                fontFamily: 'Poppins',
                                                                fontWeight: FontWeight.w400,
                                                                height: 0.12,
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 20,
                                        top: 27,
                                        child: Text(
                                            'Text Here . . . .',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                height: 0.11,
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ),
                ],
            ),
        )
    );
  }
}