import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:soul_meet_num/Screens/auth_screens/login_screen.dart';
import 'package:soul_meet_num/Screens/auth_screens/register_screen.dart';

void main() => runApp(OnboardingScreen());

class ImageConstants {
  static const String localImage1 = "assets/photo8.png";
  static const String localImage2 = "assets/photo7.png";
  static const String localImage3 = "assets/photo.png";
}

class OnboardingScreen extends StatefulWidget {

  const OnboardingScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (context) => const OnboardingScreen(),
    );
  }

  @override 
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<String> imageList = [
    ImageConstants.localImage1,
    ImageConstants.localImage2,
    ImageConstants.localImage3,
  ];

  final List<String> imageDescriptions = [
    "Algorithm",
    "Matches",
    "Algorithm",
  ];

  final List<String> subImageDescriptions = [
    "Users going through a numerology process to ensure you never match with bots.",
    "We match you with people that have a large array of similar interests. ",
    "Users going through a numerology process to ensure you never match with bots.",
  ];

  CarouselController _controller = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                  Color(0x99FF9800),
                  Colors.white,
                  Color(0x66FFC46D)
                ],
                    stops: [-0.5, 0.4, 3.0],
                    tileMode: TileMode.repeated,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
          child: Center(
            child: SingleChildScrollView(
              child: ListView(shrinkWrap: true, children: [
                Column(
                  children: [
                    CarouselSlider.builder(
                      carouselController: _controller,
                      itemCount: imageList.length,
                      itemBuilder:
                          (BuildContext context, int index, int realIndex) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: <Widget>[
                              Image.asset(
                                imageList[index],
                                width: MediaQuery.of(context).size.width * 0.8,
                                height:200,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        );
                      },
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false,
                        autoPlay: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                    ),        
                    Padding(
                      padding: const EdgeInsets.only(top: 44.0),
                      child: Column(
                        children: [
                          Text(
                            imageDescriptions[_currentIndex],
                            style: TextStyle(
                              color: Color(0xFFFFC700),
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Padding( padding: EdgeInsets.symmetric(horizontal: 50.0,
                            ),
                            child: Text(
                              subImageDescriptions[_currentIndex],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF323755),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),        
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.asMap().entries.map((entry) {
                        return Container(
                          width: 12.0,
                          height: 12.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentIndex == entry.key
                                  ? Color(0xFFFFC700).withOpacity(0.9)
                                  : Colors.grey.withOpacity(0.4)        
                              ),
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 59.0),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0,
                      ),
                      child: ElevatedButton(
                        onPressed: () {                         
                          Navigator.of(context).pushAndRemoveUntil(RegisterScreen.route(), (route) => false);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFC700),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: Size(300, 0), 
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(
                              20.0), 
                          child: Text(
                            'Create an account',
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
                    SizedBox(height: 35.0),
                    SizedBox(
                      width: 295,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            height: 1,
                          ),
                          children: [
                            TextSpan(
                              text: 'Already have an account? ',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.699999988079071),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pushAndRemoveUntil(LoginScreen.route(), (route) => false);
                                
                                },
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                    color: Color(0xFFFFC700),
                                    fontWeight: FontWeight.w700,
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
              ]),
            ),
          ),
        ),
      );
  }
}
