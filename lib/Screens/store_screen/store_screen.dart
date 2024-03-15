import 'package:flutter/material.dart';


class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
        width: MediaQuery.of(context).size.width,
        height: 812,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
            children: [
                Positioned(
                    left: 34,
                    top: 44,
                      child: Container(
                          width: MediaQuery.of(context).size.width,
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
                                                                // Navigator.of(context).push();
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
                                              'Store',
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
                    left: 71,
                    top: 272,
                    child: Text(
                        'Buy Me a Coffee',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                        ),
                    ),
                ),
                Positioned(
                    left: 104,
                    top: 134,
                    child:  Container(
                            width: 148,
                            height: 148,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage("Frame.png"),
                                                fit: BoxFit.fill,
                                            ),
                                        ),
                            child: Stack(children: [                        
                            ]),
                        ),
                ),
                Positioned(
                    left: 30,
                    top: 634,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 56,
                        child: Stack(
                        children: [
                          Container(
                            width: 295,
                            height: 56,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFFC700),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
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
                                  'Support Now',
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
                          )
                        ],
                      )
                    ),
                ),
                Positioned(
                    left: 30,
                    top: 342,
                    child: Container(
                        width: 140,
                        height: 122,
                        child: Stack(
                            children: [
                                Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                        width: 140,
                                        height: 122,
                                        decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 1,
                                                    color: Colors.black.withOpacity(0.20000000298023224),
                                                ),
                                                borderRadius: BorderRadius.circular(20),
                                            ),
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 35,
                                    top: 38,
                                    child: Text.rich(
                                        TextSpan(
                                            children: [
                                                TextSpan(
                                                    text: '\$2\n',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 26,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w700,
                                                    ),
                                                ),
                                                TextSpan(
                                                    text: 'Per Month',
                                                    style: TextStyle(
                                                        color: Color(0xFFFFC700),
                                                        fontSize: 13,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w700,
                                                    ),
                                                ),
                                            ],
                                        ),
                                        textAlign: TextAlign.center,
                                    ),
                                ),
                            ],
                        ),
                    ),
                ),
                Positioned(
                    left: 185,
                    top: 342,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 122,
                        child: Stack(
                            children: [
                                Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                        width: 140,
                                        height: 122,
                                        decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 1,
                                                    color: Colors.black.withOpacity(0.20000000298023224),
                                                ),
                                                borderRadius: BorderRadius.circular(20),
                                            ),
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 42,
                                    top: 38,
                                    child: Text.rich(
                                        TextSpan(
                                            children: [
                                                TextSpan(
                                                    text: '\$15\n',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 26,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w700,
                                                    ),
                                                ),
                                                TextSpan(
                                                    text: 'Per Year',
                                                    style: TextStyle(
                                                        color: Color(0xFFFFC700),
                                                        fontSize: 13,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w700,
                                                    ),
                                                ),
                                            ],
                                        ),
                                        textAlign: TextAlign.center,
                                    ),
                                ),
                            ],
                        ),
                    ),
                ),
                Positioned(
                    left: 31,
                    top: 479,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                        height: 122,
                        child: Stack(
                            children: [
                                Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                        width: 294,
                                        height: 122,
                                        decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 1,
                                                    color: Colors.black.withOpacity(0.20000000298023224),
                                                ),
                                                borderRadius: BorderRadius.circular(20),
                                            ),
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 122,
                                    top: 86,
                                    child: Text(
                                        'Ad Removal',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 61,
                                    top: 20,
                                    child: Text.rich(
                                        TextSpan(
                                            children: [
                                                TextSpan(
                                                    text: 'Buy Onetime\n',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 26,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w700,
                                                    ),
                                                ),
                                                TextSpan(
                                                    text: 'Coffee',
                                                    style: TextStyle(
                                                        color: Color(0xFFFFC700),
                                                        fontSize: 26,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w700,
                                                    ),
                                                ),
                                            ],
                                        ),
                                        textAlign: TextAlign.center,
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