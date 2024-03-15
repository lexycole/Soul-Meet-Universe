import 'package:cached_network_image/cached_network_image.dart';
import 'package:soul_meet_num/Screens/commons/constData.dart';
import 'package:soul_meet_num/Screens/commons/fullPhoto.dart';
import 'package:soul_meet_num/Screens/commons/userProfileCommon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';

class SearchMain extends StatefulWidget {
  @override State<StatefulWidget> createState() => _SearchMain();

  String? title;
}

class _SearchMain extends State<SearchMain> with userProfileCommon,WidgetsBindingObserver, AutomaticKeepAliveClientMixin<SearchMain>{

  @override
  bool get wantKeepAlive => true;

  late Future<void> _fetchDataFuture;

  late bool _isLike = false;
  int _currentIndex = 0;
  double _xPosition = 0.0;
  late PageController _pageController;
  

  List<SwipeItem> _swipeItems = <SwipeItem>[];
  MatchEngine? _matchEngine;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List<String> _names = [
    "Red",
    "Blue",
    "Green",
    "Yellow",
    "Orange",
    "Grey",
    "Purple",
    "Pink"
  ];
  List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.grey,
    Colors.purple,
    Colors.pink
  ];


  @override
  void initState() {

      _fetchDataFuture = fetchWomanPhotosAndPopulateUserDataList();

    for (int i = 0; i < _names.length; i++) {
      _swipeItems.add(SwipeItem(
          likeAction: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Liked ${_names[i]}"),
              duration: Duration(milliseconds: 500),
            ));
          },
          nopeAction: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Nope ${_names[i]}"),
              duration: Duration(milliseconds: 500),
            ));
          },
          superlikeAction: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Superliked ${_names[i]}"),
              duration: Duration(milliseconds: 500),
            ));
          },
          onSlideUpdate: (SlideRegion? region) async {
            print("Region $region");
          }));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: FutureBuilder<void>(
        future: _fetchDataFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(color: Color(0xFFFFC700)));
          } else if (snapshot.hasError) {
            return Center(child: Text('Error fetching data'));
          } else if (dummyUserDataListInSearch.isEmpty) {
            return Center(child: Text('No matches'));
          } else {
            return Column(                
            children: <Widget>[
              SizedBox(height: 20),
              Container(
                        width: 295,
                        height: 69,
                        child: Stack(
                          children: [
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
                            Positioned(
                              left: 72,
                              top: 43,
                              child: SizedBox(
                                width: 151,
                                child: Text(
                                  'Find Your Match',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.699999988079071),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 72,
                              top: 20,
                              child: SizedBox(
                                width: 151,
                                child: Text(
                                  'Suggested',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
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
                                              Icons.arrow_back_ios,
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
                                      left: 38,
                                      top: 38,
                                      child: Transform(
                                        transform: Matrix4.identity()
                                          ..translate(0.0, 0.0)
                                          ..rotateZ(-3.14),
                                        child: Container(
                                          width: 24,
                                          height: 24,
                                          child: Stack(children: []),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.transparent,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: SwipeCards(
                          matchEngine: _matchEngine!,
                          itemBuilder: (BuildContext context, int index) {
                            return Stack(
                              children: <Widget>[
                                PageView(
                                  controller: _pageController = PageController(initialPage: 0),
                                  children: _userProfile(size, index),
                                  scrollDirection: Axis.vertical,
                                ),
                                Positioned(
                                  top: 54,
                                  right: 36,
                                  child: _isLike != null && !_isLike && index == _currentIndex
                                      ? _likeOrDislikeIconOnPhoto(FontAwesomeIcons.ban, Colors.redAccent)
                                      : Container(),
                                ),
                                Positioned(
                                  top: 50,
                                  left: 40,
                                  child: _isLike != null && _isLike && index == _currentIndex
                                      ? _likeOrDislikeIconOnPhoto(FontAwesomeIcons.faceKissWinkHeart, Colors.green[800]!)
                                      : Container(),
                                )
                              ],
                            );
                          },
                          onStackFinished: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Stack Finished"),
                              duration: Duration(milliseconds: 500),
                            ));
                          },
                          itemChanged: (SwipeItem item, int index) {
                            print("item: ${item.content.text}, index: $index");
                          },
                          leftSwipeAllowed: true,
                          rightSwipeAllowed: true,
                          upSwipeAllowed: true,
                          fillSpace: true,
                          likeTag: Container(
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(border: Border.all(color: Colors.green)),
                            child: Text('Like'),
                          ),
                          nopeTag: Container(
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                            child: Text('Nope'),
                          ),
                          superLikeTag: Container(
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
                            child: Text('Super Like'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0,8,12,8),
                child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      ...bottomIconDataList.map((data) => bottomButtonWidget(data, _matchEngine!)).toList(),
                      ],
                  ),
                )
              ],
            );
          }
    }));
  }

  Widget _likeOrDislikeIconOnPhoto(IconData icon, Color iconColor){
    return AnimatedOpacity(
      opacity: _xPosition,
      duration: Duration(milliseconds: 500),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 1.0,
            top: 2.0,
            child: FaIcon(
              icon,
              color: Colors.black54,
              size: 76,
            )
          ),
          FaIcon(
            icon,
            color: iconColor,
            size: 76,
          )
        ],
      ),
    );
  }

List<Widget> _userProfile(Size size, int index) {
  List<Widget> _returnWidgetList = [];
  if (dummyUserDataListInSearch.isNotEmpty && index < dummyUserDataListInSearch.length) {
    for (int i = 0; i < dummyUserDataListInSearch[index].userImages.length; i++) {
      Widget _userWidget = Stack(
        children: [
          GestureDetector(
            child: Container(
              height: size.height * 0.77,
              width: size.width - 14,
              color: Colors.white,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: CachedNetworkImage(
                  imageUrl: dummyUserDataListInSearch[index].userImages[i],
                  placeholder: (context, url) => Container(
                    transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                    child: Container(
                        width: double.infinity,
                        height: size.height * 0.77,
                        child: Center(child: CircularProgressIndicator())),
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FullPhoto(imageUrlList: dummyUserDataListInSearch[index].userImages, initIndex: i,)));
            },
          ),
          Positioned(
            bottom: 4,
            left: 4,
            child: userInformation(dummyUserDataListInSearch[index], size),
          ),
          Positioned(
            right: 12,
            top: 30,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: dummyUserDataListInSearch[index].userImages.length,
              effect: SlideEffect(
                dotColor: Colors.white,
                activeDotColor: Colors.deepPurple,
                dotHeight: 6,
                spacing: 16,
              ),
            ),
          ),
        ],
      );
      _returnWidgetList.add(_userWidget);
    }
  }
  return _returnWidgetList;
  }
}