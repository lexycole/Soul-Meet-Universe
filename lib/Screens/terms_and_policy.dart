import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsAndPolicyScreen extends StatefulWidget {
  const TermsAndPolicyScreen({super.key});

  @override
  State<TermsAndPolicyScreen> createState() => _TermsAndPolicyScreenState();
}

class _TermsAndPolicyScreenState extends State<TermsAndPolicyScreen> {

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final sheetHeight = screenHeight / 1.15; 

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,), 
          onPressed: () { Get.back();},
          ),
        title: Text('Sign In')
        ),
        body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0x99FF9800), Colors.white, Color(0x66FFC46D)],
                stops: [-0.5, 0.4, 3.0],
                tileMode: TileMode.repeated,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
                )
              ),
        child: Padding(
        padding: EdgeInsets.symmetric(vertical: 100.0),
        child: Column(
          children: [
            SingleChildScrollView(
      child: Container(
      height:sheetHeight,
        padding: EdgeInsets.all(24),
        child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "Terms and Policy\n",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      TextSpan(
                        text: "Last updated is 31 October 2023",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(), 
                Icon(
                  Icons.info_outlined,
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(height: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "What is numerology?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                "Numerology connects numbers to energy, which appears in the form of qualities and states of being in daily life. As a result, everything in the world has an energy vibration, including numbers. Every number and letter have its own distinct vibration that has an impact on the tale of your life. Therefore, numerology is a metaphysical science that studies the connection between numbers and letters in our personalities and life experiences. Know that your birth date and name was not a coincidence, and they both play an important role in shaping who you are. Numerology exposes the blueprint of every human being's life and is a highly important self-help tool for understanding yourself or who you are, as well as gaining views on your interpersonal dynamics.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Each number gives you a greater understanding of who you are and how you might improve yourself. It also assists you in determining your life path number, which can be used to describe the map of one's life, personalities, destiny, heart desire, life challenges, past and future, directions, opportunities coming your way, life's blueprint, awareness of strengths and weaknesses, forecasting and planning one's future, and so on.",
                style: TextStyle(fontSize: 16),            
              ),
              SizedBox(height: 10),
              Text(
                "Numerology 5 core numbers: Life path, birthday, destiny/expression, soul urge/heart desire, personality number.",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "Community Guidelines:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  "Be sympathetic, respectful, safe, none judgmental, and real",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "- No violence or physical harm",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "- No discriminatory conduct or hate speech",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "- Be kind on your profile",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "- Be kind in the messages you send other users",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "- Do not message/send nudity/sexual content to other users",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "- No nudity/sexual content allowed",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "- Do not post copyright and trademark infringement contents",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "- Do not share your personal information with other users",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "- Do not post nudity or sexually explicit pictures on your profile",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "- All your profile images should be focused on you only",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "- No bullying/harassing of other users, no racist message or imagery",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "- No promotion/advertising, no spamming, no scamming",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "- Do not create multiple accounts with different emails",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "- Email for quotes if you want to advertise on app/website",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "- You must be 18 years of age or older to use the social/dating part of the app",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "- Account will be terminated/suspended if continuously violating c-guideline",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "REFUND POLICY:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  "- No refund on donation, monthly, or yearly subscriptions",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "- Canceled anytime on monthly or yearly subscriptions on the next payment only",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black26,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(100, 50),
                ),
                  child: Text("Close",  style: TextStyle(color: Colors.white,), ),
                ),
                ElevatedButton(
                  onPressed: () {                    
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFC700),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(100, 50),
                ),
                  child: Text("Accept", style: TextStyle(color: Colors.white,),),
                ),
              ],
            ),
          ],
        ),
      ])),
            )
          ],
        ),
      ),
    ));
  }
}
