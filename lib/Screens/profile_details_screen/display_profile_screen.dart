import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class DisplayProfileScreen extends StatefulWidget {
  const DisplayProfileScreen({super.key});

  @override
  State<DisplayProfileScreen> createState() => _DisplayProfileScreenState();
}

class _DisplayProfileScreenState extends State<DisplayProfileScreen> {

  String? firstName;
  String? imageUrl;

  @override
  void initState() {
    super.initState();
    fetchUserData().then((value) {
      print('Success: User data fetched successfully!');
    }).catchError((error) {
      print('Error fetching user data: $error');
    });
  }

  Future<void> fetchUserData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final storedUsername = prefs.getString('username');
      final storedImageUrl = prefs.getString('imageUrl');

      setState(() {
        firstName = storedUsername;
        imageUrl = storedImageUrl;
      });
    } catch (error) {
      print('Error fetching user data: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
        body: Container(
      width: double.infinity,     
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
                    ],
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
                  SizedBox(height: 30),
                  Container(
                    width: 295,
                    height: 420,
                    child: ListView.separated(
                      itemCount: 7,
                      separatorBuilder: (context, index) {
                        return Divider(height: 1, color: Color(0xFFE8E6EA));
                      },
                      itemBuilder: (context, index) {
                        final items = [
                          'Add Other Profile',
                          'Store',
                          'Rate This App',
                          'Share App',
                          'Feedback/Comments',
                          'Settings',
                          'Terms & Policy',
                        ];
                        return InkWell(
                          onTap: () {
                            final routes = [
                              '/add_other_profile',
                              '/store',
                              '/rate_app',
                              '/share_app',
                              '/feedback_comments',
                              '/settings',
                              '/terms_policy',
                            ];
                            Navigator.of(context).pushNamed(routes[index]);
                          },
                          child: ListTile(
                            title: Text(
                              items[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0.23,
                              ),
                            ),
                            trailing: Image.asset('arrow-right.png'),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
