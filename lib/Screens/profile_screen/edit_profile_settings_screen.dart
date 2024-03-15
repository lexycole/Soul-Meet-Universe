import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EditProfileSettingsScreen extends StatefulWidget {
  const EditProfileSettingsScreen({super.key});

  @override 
  State<EditProfileSettingsScreen> createState() => _EditProfileSettingsScreenState();
}

  class _EditProfileSettingsScreenState extends State<EditProfileSettingsScreen> {

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
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0x99FF9800), Colors.white, Color(0x66FFC46D)],
              stops: [-0.5, 0.4, 3.0],
              tileMode: TileMode.repeated,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Row(
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 34,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0.04,
                    ),
                  ),
                  Spacer(),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Stack(
                            children: [
                              Container(
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
                                    icon: Icon(
                                      Icons.tune,
                                      color: Color(0xFFFFC700),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ));
                    },
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 64,
                        backgroundImage: imageUrl != null
                            ? NetworkImage(imageUrl!)
                            : AssetImage('avatar.png')
                                as ImageProvider<Object>?,
                        backgroundColor: Colors.grey,
                      ),
                      SizedBox(height: 30),
                      if (firstName != null)
                        Text(
                          '$firstName',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0.06,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
