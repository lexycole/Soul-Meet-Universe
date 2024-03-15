import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  CollectionReference _userProfileCollection =
      FirebaseFirestore.instance.collection('userProfile');

  String? firstName;
  String? imageUrl; 

  Future<void> fetchUserData() async {
    try {
     DocumentSnapshot userSnapshot =
          await _userProfileCollection.doc('qz8a9yJ3SPGCV9XGJAre').get();
      if (userSnapshot.exists) {
        setState(() {          
          firstName = userSnapshot.get('name');
          imageUrl = userSnapshot.get('imageLink');
        });
      }
    } catch (error) {
      print('Error fetching user data: $error');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchUserData().then((value) {
      print('Success: User data fetched successfully!');
    }).catchError((error) {
      print('Error fetching user data: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: [
                    Container(
                      width: 52,
                      height: 52,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
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
                    Spacer(),
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: imageUrl != null
                          ? NetworkImage(imageUrl!)
                          : AssetImage('avatar.png') as ImageProvider<Object>?,
                      backgroundColor: Colors.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      _buildButton('Settings', 28),
                      _buildButtonWithIcon('Account', Icons.account_circle, 24,
                          Color(0xFFFFC700), 30.0),
                      _buildButton('Edit Profile', 21),
                      _buildButton('Terms and Policy', 21),
                      _buildButtonWithIcon(
                          'Other', Icons.settings, 24, Color(0xFFFFC700), 30.0),
                      _buildButtonWithIconAndTrailing('Log Out',  Icons.exit_to_app, 24, Color(0xFFFFC700), 30.0),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildButton(String text, double fontSize) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0),
    child: TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}

Widget _buildButtonWithIcon(String text, IconData iconData, double fontSize,
    Color iconColor, double iconSize) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 30.0),
    child: TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        foregroundColor: Color(0xFFFFC700),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(iconData, color: iconColor, size: iconSize),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildButtonWithIconAndTrailing(
    String text, IconData trailingIconData, double fontSize, Color iconColor, double iconSize) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 30.0),
    child: TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                  fontSize: fontSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Icon(
            trailingIconData,
            color: iconColor,
          ),
        ],
      ),
    ),
  );
}
