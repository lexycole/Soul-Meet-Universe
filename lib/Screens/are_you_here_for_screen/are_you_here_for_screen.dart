import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soul_meet_num/Screens/profile_screen/profile_screen.dart';
import 'package:soul_meet_num/Services/localization/language_constants.dart';

class AreYouHereForScreen extends StatefulWidget {
  const AreYouHereForScreen({super.key});

  @override
  State<AreYouHereForScreen> createState() => _AreYouHereForScreenState();
}

class _AreYouHereForScreenState extends State<AreYouHereForScreen> {
  int? selectedValue; 
  String? selectedMonth; 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0x99FF9800), Colors.white, Color(0x66FFC46D)],
              stops: [-0.5, 0.4, 3.0],
              tileMode: TileMode.repeated,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 100.0),
        child: Column(
          children: [
            Container(
                width: 350,
                margin: EdgeInsets.only(left: 5.0, bottom: 40),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: getTranslated(this.context, 'useyourname'),                            
                      ),                     
                      TextSpan(
                        text: getTranslated(this.context, 'findsoul'),                           
                      ),
                      TextSpan(
                        text: getTranslated(this.context, 'findthelove'),
                        style: TextStyle(fontWeight: FontWeight.bold), 
                      ),
                    ],
                  ),
                )),
            SizedBox(
              width: 295,
              child: Text(
                getTranslated(this.context, 'areyouherefor'),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0.04,
                ),
              ),
            ),
            Spacer(),
              Container(
              padding: EdgeInsets.symmetric(vertical: 30.0, ),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => ProfileScreen());
                  },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFC700),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(350, 0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    getTranslated(this.context, 'datesoc'),
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
      ),
    ));
  }
}
