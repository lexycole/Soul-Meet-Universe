import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soul_meet_num/Screens/home_page.dart';

class FirstAndLastNameScreen extends StatefulWidget {
  const FirstAndLastNameScreen({super.key});

  @override
  State<FirstAndLastNameScreen> createState() =>
      _FirstAndLastNameScreenState();
}

class _FirstAndLastNameScreenState extends State<FirstAndLastNameScreen> {
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
          padding: EdgeInsets.symmetric(vertical: 60.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right:18.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () { Get.to(MyHomePage()); },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Color(0xFFFFC700),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height:40), 
                SizedBox(
                  width: 340,
                  child: Text(
                    'Profile details',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 34,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0.04,
                    ),
                  ),
                ),
            
              SizedBox(height: 15),
              Container(
                  width: 350,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0), 
                      child: buildInstructionsText(),
                    ),
                  )),
              SizedBox(height: 40),
              
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "First name",
                    hintText: "First name",
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(
                          0.4000000059604645),
                    ),
                    
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0x99E8E6EA), width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0x99E8E6EA), width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0x99E8E6EA), width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  cursorColor: Colors.black,
                ),
              ),
              SizedBox(height: 15.0),
             
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Last name",
                    hintText: "Last name",
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(
                          0.4000000059604645),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0x99E8E6EA), width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0x99E8E6EA), width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0x99E8E6EA), width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  cursorColor: Colors.black,
                ),
              ),
              Spacer(),
              Container(
                child: ElevatedButton(
                  onPressed:(){ Get.to(MyHomePage()); },
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
        ),
    ));
  }
}

Widget buildInstructionsText() {
  return RichText(
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
          text:
              'Enter your current name, the name you give to people when introducing yourself in public,including your last name, even if you do not always say it. (Ex: married name, name change etc.) ',
        ),
      ],
    ),
  );
}
