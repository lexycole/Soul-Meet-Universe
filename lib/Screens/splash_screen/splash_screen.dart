import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:soul_meet_num/Screens/onboarding_screen/onboarding_screen.dart';
import 'package:soul_meet_num/utils/constants.dart';


void main() => runApp(SplashScreen());

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  final _totalDots = 5;
  int _currentPosition = 0;

  int _validPosition(int position) {
    if (position >= _totalDots) return 0;
    if (position < 0) return _totalDots - 1;
    return position;
  }

  void _updatePosition(int position) {
    setState(() => _currentPosition = _validPosition(position));
  }

  Widget _buildRow(List<Widget> widgets) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widgets,
      ),
    );
  }

  String getPrettyCurrPosition() {
    return (_currentPosition + 1.0).toStringAsPrecision(3);
  }

  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3), 
      vsync: this,
    )
      ..addListener(() {
        int nextPosition = ((_controller.value * _totalDots).floor());
        _updatePosition(nextPosition);
      })
      ..addStatusListener((status) async {
        if (status == AnimationStatus.completed) {
          await Future.delayed(Duration(seconds: 2)); 

          final session = supabase.auth.currentSession;

          if (session == null) {
          Navigator.of(context)
                .pushAndRemoveUntil(OnboardingScreen.route(), (route) => false);
          } else {
            Navigator.of(context).pushAndRemoveUntil(OnboardingScreen.route(), (route) => false);
          }
        }
      });

    _controller.forward(); 
  }

  @override
  void dispose() {
    _controller.dispose(); 
    super.dispose();
  }

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox( height: 350, ), 
                Center(
                  child: Image.asset(
                    'assets/Group 44.png',
                    width: 180,
                    height: 180,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 375,                    
                    child: Stack(
                      children: [
                        Positioned(
                          left: 72,
                          top: 199,
                          child: Container(
                            width: 230.94,
                            height: 203.62,
                            child: Stack(children: [
                              _buildRow([
                                DotsIndicator(
                                  dotsCount: _totalDots,
                                  position: _currentPosition,
                                  reversed: true,
                                  decorator: DotsDecorator(
                                    colors: [
                                      Color(0x33FFC700),
                                      Color(0x66FFC700),
                                      Color(0x99FFC700),
                                      Color(0xFFFFC700),
                                      Color(0xCCFFC700),
                                    ].reversed.toList(),
                                    activeColors: [
                                      Color(0xCCFFC700),
                                      Color(0xCCFFC700),
                                      Color(0xCCFFC700),
                                      Color(0xCCFFC700),
                                      Color(0xCCFFC700),
                                    ],
                                    sizes: [
                                      Size.square(15.0),
                                      Size.square(15.0),
                                      Size.square(15.0),
                                      Size.square(15.0),
                                      Size.square(20.0),
                                    ],
                                    activeSizes: [
                                      Size.square(15.0),
                                      Size.square(15.0),
                                      Size.square(15.0),
                                      Size.square(15.0),
                                      Size.square(15.0),
                                    ],
                                  ),
                                ),
                              ]),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
  }
}
