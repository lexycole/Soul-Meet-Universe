import 'package:soul_meet_num/Screens/commons/constData.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';

mixin userProfileCommon {
  
  // CardController cardController = CardController();

  Widget userInformation(UserData userData,Size size) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 2),
                child: Text(
                  userData.name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 36,
                      shadows: [ Shadow(blurRadius: 1.0,color: Colors.black,offset: Offset(0.6,0.6))]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Text(
                  userData.information,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    shadows: [ Shadow(blurRadius: 1.0,color: Colors.black,offset: Offset(0.6,0.6))]
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0,right: 12),
            child: Container(
              width: size.width- 20,
              child: Text(
                userData.intro,
                softWrap: true,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  shadows: [ Shadow(blurRadius: 1.0,color: Colors.black,offset: Offset(0.6,0.6))]
                ),
              ),
            ),
          ),
          Wrap(children: userData.interesting.map(interestingWidget).toList(),),
        ],
      ),
    );
  }

  Widget interestingWidget(String interesting){
    return Padding(
      padding: const EdgeInsets.only(right:8.0,bottom: 4.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[700]
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(6,4,6,4),
          child: Text(interesting,style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }

  Widget bottomButtonWidget(BottomButtonData data, MatchEngine _matchEngine){
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:8.0),
        child: RawMaterialButton(
          onPressed: () {
            if(data.iconData == FontAwesomeIcons.xmark){
              _matchEngine.currentItem?.nope();
            }else if(data.iconData == FontAwesomeIcons.solidHeart){
                _matchEngine.currentItem?.superLike();
            }
            else if(data.iconData == FontAwesomeIcons.solidStar){
              _matchEngine.currentItem?.like();
            }
          },
          child: FaIcon(
            data.iconData,
            color: data.iconColor,
            size: (data.iconData == FontAwesomeIcons.xmark || data.iconData == FontAwesomeIcons.solidHeart) ? 32.0 : 20,
          ),
          shape: CircleBorder(),
          elevation: 1.0,
          fillColor: Colors.white,
          padding: const EdgeInsets.all(14.0),
        ),
      ),
    );
  }
}