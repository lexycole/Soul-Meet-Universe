import 'package:flutter/material.dart';
import 'package:soul_meet_num/Widgets/matchesCard.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({super.key});

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {

  TextEditingController searchController = TextEditingController();
  List<String> cardImages = [
    "photo-matches-1.png",
    "photo-matches-2.png",
    "photo-matches-3.png",
    "photo-matches-4.png",
    "photo-matches-5.png",
    "photo-matches-6.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
                  width: 375,
                  height: 812,
                  child: Stack(
                      children: [
                          Positioned(
                              left: 30,
                              top: 44,
                              child: Container(
                                  width: 295,
                                  height: 52,
                                  child: Stack(
                                      children: [
                                          Positioned(
                                              left: 0,
                                              top: 0,
                                              child: SizedBox(
                                                  width: 295,
                                                  child: Text(
                                                      'Matches',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 34,
                                                          fontFamily: 'Poppins',
                                                          fontWeight: FontWeight.w700,
                                                      ),
                                                  ),
                                              ),
                                          ),
                                          Positioned(
                                              left: 243,
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
                                                                                Navigator.pop(context);
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
                                                                          child: Stack(children: []),
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
                              top: 104,
                              child: SizedBox(
                                  width: 295,
                                  child: Text(
                                      'This is a list of people who have liked you and your matches.',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.699999988079071),
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                      ),
                                  ),
                              ),
                          ),   
                        Positioned(
                          left: 30,
                          top: 163,
                          child: Container(
                            width: 295,
                            height: 48,
                            child: Stack(
                              children: [
                                Container(
                                  width: 295,
                                  height: 48,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  top: 14,
                                  child: Container(
                                    width: 24,
                                    height: 20,
                                    child: Image.asset(
                                      'search.png', 
                                      width: 24,
                                      height: 20,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 51,
                                  top: 14,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 214, 
                                        height: 20,
                                        child: TextField(
                                          controller: searchController,
                                              onChanged: (text) {
                                                setState(() {}); 
                                              },
                                          decoration: InputDecoration(
                                            hintText: 'Search life path, country, heart...',
                                            hintStyle: TextStyle(
                                              color: Colors.black.withOpacity(0.4000000059604645),
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                            ),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),  
                        Positioned(
                            left: 20,
                            top: 230,
                            right: 0,
                            bottom: 0,
                            child: CustomScrollView(
                              slivers: <Widget>[
                                SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                    (BuildContext context, int index) {
                                      if (index < 3) {
                                        return Row(
                                          children: [
                                            buildCard("photo-matches-${2 * index + 1}.png", 'Person ${2 * index + 1}', searchController),
                                            buildCard("photo-matches-${2 * index + 2}.png", 'Person ${2 * index + 2}', searchController),
                                          ],
                                        );
                                      } else {
                                        return null;
                                      }
                                    },
                                    childCount: 6, 
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                  ),
              )
    );
  }
}

