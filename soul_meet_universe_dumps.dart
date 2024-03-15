# // import 'package:soul_meet_num/Widgets/Dropdown.dart';
# import './utils/constants.dart';
# import './pages/splash_page.dart';

# import 'package:soul_meet_num/Screens/home.dart';
# import 'package:soul_meet_num/Screens/home_page.dart';
# // import 'package:soul_meet_num/Screens/auth_screens/login_screen.dart';
# // import 'package:soul_meet_num/Screens/auth_screens/register_screen.dart'; 

// import 'package:soul_meet_num/Screens/splash_screen/splash_screen.dart';
import 'package:soul_meet_num/Screens/language_screen/language_screen.dart';
import 'package:soul_meet_num/Configs/app_constants.dart';
import 'package:soul_meet_num/Services/profileDetails.dart';

// Future<void> main() async {

//   WidgetsFlutterBinding.ensureInitialized();

//   runApp(MyApp());
// }


// class MyApp extends StatelessWidget {
  // import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:soul_meet_num/Routes/routes_helpers.dart';
// import 'package:soul_meet_num/Screens/I_am_screen/I_am_screen.dart';
// import 'package:soul_meet_num/Screens/are_you_here_for_screen/are_you_here_for_screen.dart';
// import 'package:soul_meet_num/Screens/auth_screens/register_screen.dart';
// import 'package:soul_meet_num/Screens/chart_calculator_screen/chart_calculator_screen.dart';
// import 'package:soul_meet_num/Screens/chart_calculator_screen/chart_calculator_two.dart';
// import 'package:soul_meet_num/Screens/chart_calculator_screen/couple_match.dart';
// import 'package:soul_meet_num/Screens/chart_calculator_screen/twin_flame_match.dart';
// import 'package:soul_meet_num/Screens/chart_calculator_screen/twin_flame_match_profile.dart';
// import 'package:soul_meet_num/Screens/date_of_birth_screen/date_of_birth_screen.dart';
// import 'package:soul_meet_num/Screens/language_screen/language_screen.dart';
// import 'package:soul_meet_num/Screens/main_screen/main_screen.dart';
// import 'package:soul_meet_num/Screens/match_screen/match_screen.dart';
// import 'package:soul_meet_num/Screens/matches_screen/matches_screen.dart';
// import 'package:soul_meet_num/Screens/messages_screen/messages_screen.dart';
// import 'package:soul_meet_num/Screens/numerology_calculator/numerology_calculator.dart';
// import 'package:soul_meet_num/Screens/onboarding_screen/onboarding_screen.dart';
// import 'package:soul_meet_num/Screens/profile_details_screen/display_profile_screen.dart';
// import 'package:soul_meet_num/Screens/profile_details_screen/profile_details_screen.dart';
// import 'package:soul_meet_num/Screens/profile_details_screen/first_and_last_name_screen.dart';
// import 'package:soul_meet_num/Screens/profile_screen/profile_screen.dart';
// import 'package:soul_meet_num/Screens/rate_this_app_screen/rate_this_app_screen.dart';
// import 'package:soul_meet_num/Screens/splash_screen/splash_screen.dart';
// import 'package:soul_meet_num/Screens/chat_screen/chat_screen.dart';
// import 'package:soul_meet_num/Widgets/IAmRadioListTile/IAmRadioListTile.dart';
// import 'package:soul_meet_num/Tabs/bottom_nav_tabs.dart';
// import 'package:soul_meet_num/Screens/settings_screen/settings_screen.dart';
// import 'package:soul_meet_num/Screens/store_screen/store_screen.dart';
// import 'package:soul_meet_num/Screens/feedback_screen/feedback_screen.dart';


// import 'Screens/auth_screens/login_screen.dart';
// import 'package:firebase_core/firebase_core.dart';

// void main()  async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: FirebaseOptions(
//     apiKey: "AIzaSyDP1lQDTCT5A7PR95Bv-2uI8uyOUOmvhJ8",
//     appId: "1:727571067852:android:d878c2f77ada9e9298a369",
//     messagingSenderId: "727571067852",
//     projectId: "soul-meet-universe",
//     storageBucket: "soul-meet-universe.appspot.com"
//     )
//   );
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//   static void setLocale(BuildContext context, Locale newLocale) {
//     _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
//     state.setLocale(newLocale);
//   }

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Locale? _locale;
//   setLocale(Locale locale) {
//     setState(() {
//       _locale = locale;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: SplashScreen(),
//       // home: ProfileDetailsScreen(),

//       // email:olawa12@gmail.com
//       // password Soulmeet@2023
//       // home: NumerologyCalculator(),
//       initialRoute: RouteHelper.getInitial(),
//       getPages: RouteHelper.routes
//       // home: SplashScreen(),
//       // initialRoute: '/',
//       // routes: {
//       //   'register': (context) => RegisterScreen(),
//       //   'profile': (context) =>  LanguageScreen(), 
//       // },
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:soul_meet_num/Screens/category.dart';

class CatBlock extends StatelessWidget {
  String categoryName;
  String categoryImgSrc;
  CatBlock(
      {super.key, required this.categoryImgSrc, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CategoryScreen(
                    catImgUrl: categoryImgSrc, catName: categoryName)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 7),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                  height: 50, width: 100, fit: BoxFit.cover, categoryImgSrc),
            ),
            Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(12)),
            ),
            Positioned(
                left: 30,
                top: 15,
                child: Text(
                  categoryName,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ))
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:soul_meet_num/Services/localization/language_constants.dart';
// import 'package:soul_meet_num/Services/localization/demo_localization.dart';
// import 'package:soul_meet_num/main.dart';

// class LanguageDropdown extends StatefulWidget {
  
//   @override
//   _LanguageDropdownState createState() => _LanguageDropdownState();
// }

// class _LanguageDropdownState extends State<LanguageDropdown> {
//   String _selectedLanguage = 'Select Language';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//               margin: EdgeInsets.only(left: 20, right: 20, top:20),
//               width: double.infinity,
//               padding: const EdgeInsets.all(5.0),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(
//                   color: Color(0xFFC4C1BD),
//                   width: 1.0,
//                 ),
//                 borderRadius: BorderRadius.circular(30),
//                 boxShadow: [
//                   BoxShadow(
//                     blurRadius: 10,
//                     spreadRadius: 7,
//                     offset: Offset(1, 10),
//                     color: Color(0xFFFFFF),
//                   ),
//                 ],
//               ),
//               child: DropdownButton<String>(
//                   isExpanded: true,
//                   underline: SizedBox(),                            
//                   value: _selectedLanguage,
//                   items: [
//                     DropdownMenuItem<String>(
//                       value: 'Select Language',
//                       child: ListTile(
//                               leading:  Icon(
//                               Icons.language_outlined,
//                                 color: Colors.black.withOpacity(0.7),
//                                 size: 22,
//                               ),
//                               title: Text('Select Language')
//                             ),
//                     ),
//                     ...languagelist.map<DropdownMenuItem<String>>((dynamic language) {
//                       return DropdownMenuItem<String>(
//                         value: language.code,
//                         child: ListTile(
//                               leading: Image.asset(
//                                 language.flag,
//                                 width: 30,
//                                 height: 20,
//                               ),
//                               title: Text(language.name),
//                             ),
//                       );
//                     }).toList(),
//                   ],
//                   onChanged: (String? value) {
//                     setState(() {
//                       _selectedLanguage = value!;
//                       _changeLanguage(value);
//                     });
//                   },
//                 ),
//               ),
//             );
//           }

//   Future<void> _changeLanguage(String languageCode) async {
//     if (languageCode != 'Select Language') {
//       Locale locale = await setLocale(languageCode);
//       DemoLocalization.of(context)!.load();
//       MyApp.setLocale(context, locale); 
//     }
//   }
// }


// class Language {
//   final String code;
//   final String flag;
//   final String name;

//   Language(this.code, this.flag, this.name);
// }

// List<Language> languagelist = [
//   Language('en', 'flags/us.png', 'English'),
// ];


// Widget createPersonWidget(String name, String imageUrl) {
//   return Positioned(
//     left: 0,
//     top: 0,
//     child: Container(
//       width: 66,
//       height: 91,
//       child: Stack(
//         children: [
//           Positioned(
//             left: 0,
//             top: 70,
//             child: SizedBox(
//               width: 66,
//               child: Text(
//                 name,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 14,
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.w700,
//                   height: 0.11,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 0,
//             top: 0,
//             child: Container(
//               width: 66,
//               height: 66,
//               child: Stack(
//                 children: [
//                   Positioned(
//                     left: 0,
//                     top: 0,
//                     child: Container(
//                       width: 66,
//                       height: 66,
//                       decoration: ShapeDecoration(
//                         color: Colors.white,
//                         shape: const OvalBorder(
//                           side: BorderSide(width: 2, color: Color(0xFFF27121)),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     left: 4,
//                     top: 4,
//                     child: Container(
//                       width: 58,
//                       height: 58,
//                       decoration: ShapeDecoration(
//                         image: DecorationImage(
//                           image: NetworkImage(imageUrl),
//                           fit: BoxFit.cover,
//                         ),
//                         shape: const OvalBorder(),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

// Widget createPersonNonActiveWidget(String name, String imageUrl) {
//   return Positioned(
//     left: 0,
//     top: 0,
//     child: Container(
//       width: 66,
//       height: 87,
//       child: Stack(
//         children: [
//           Positioned(
//             left: 0,
//             top: 66,
//             child: SizedBox(
//               width: 66,
//               child: Text(
//                 'Sophia',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 14,
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.w700,
//                   height: 0.11,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 4,
//             top: 0,
//             child: Container(
//               width: 58,
//               height: 58,
//               child: Stack(
//                 children: [
//                   Positioned(
//                     left: 0,
//                     top: 0,
//                     child: Container(
//                       width: 58,
//                       height: 58,
//                       decoration: ShapeDecoration(
//                         image: DecorationImage(
//                           image:
//                               NetworkImage('https://via.placeholder.com/58x58'),
//                           fit: BoxFit.cover,
//                         ),
//                         shape: const OvalBorder(),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }


// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class RandomUserWidget extends StatefulWidget {
//   @override
//   _RandomUserWidgetState createState() => _RandomUserWidgetState();
// }

// class _RandomUserWidgetState extends State<RandomUserWidget> {
//   Map<String, dynamic>? _userData;

//   @override
//   void initState() {
//     super.initState();
//     _fetchUserData();
//   }

//   Future<void> _fetchUserData() async {
//     final url = Uri.parse('https://random-user-api.p.rapidapi.com/api');
//     final headers = {
//       'X-RapidAPI-Key': '6358ce1453msh7b191e846e75cebp11c061jsnfe4f78567285',
//       'X-RapidAPI-Host': 'random-user-api.p.rapidapi.com',
//     };

//     try {
//       final response = await http.get(url, headers: headers);
//       final responseData = json.decode(response.body);
//       setState(() {
//         _userData = responseData['results'][0];
//       });
//     } catch (error) {
//       print('Error fetching user data: $error');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Random User'),
//       ),
//       body: _userData == null
//           ? Center(child: CircularProgressIndicator())
//           : ListView(
//               padding: EdgeInsets.all(16.0),
//               children: [
//                 ListTile(
//                   leading: CircleAvatar(
//                     backgroundImage: NetworkImage(_userData!['picture']['large']),
//                   ),
//                   title: Text('${_userData!['name']['title']} ${_userData!['name']['first']} ${_userData!['name']['last']}'),
//                   subtitle: Text('${_userData!['email']}'),
//                 ),
//                 Divider(),
//                 ListTile(
//                   title: Text('Gender: ${_userData!['gender']}'),
//                 ),
//                 ListTile(
//                   title: Text('Location: ${_userData!['location']['city']}, ${_userData!['location']['state']}, ${_userData!['location']['country']}'),
//                 ),
//                 ListTile(
//                   title: Text('Phone: ${_userData!['phone']}'),
//                 ),
//               ],
//             ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class AlienPickupLineWidget extends StatefulWidget {
//   @override
//   _AlienPickupLineWidgetState createState() => _AlienPickupLineWidgetState();
// }

// class _AlienPickupLineWidgetState extends State<AlienPickupLineWidget> {
//   String _pickupLine = '';

//   @override
//   void initState() {
//     super.initState();
//     _fetchPickupLine();
//   }

//   void _fetchPickupLine() async {
//     final url = Uri.parse('https://alien-pickup-line.p.rapidapi.com/alien_pickup_line');
//     final headers = {
//       'X-RapidAPI-Key': '6358ce1453msh7b191e846e75cebp11c061jsnfe4f78567285',
//       'X-RapidAPI-Host': 'alien-pickup-line.p.rapidapi.com',
//     };

//     try {
//       final response = await http.get(url, headers: headers);
//       final responseData = json.decode(response.body);
//       setState(() {
//         _pickupLine = responseData['pickup_line'];
//       });
//     } catch (error) {
//       print('Error fetching pickup line: $error');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Alien Pickup Line'),
//       ),
//       body: Text(
//           _pickupLine.isNotEmpty ? _pickupLine : 'Loading...',
//           textAlign: TextAlign.center,
//           style: TextStyle(fontSize: 16),
       
//       ),
//     );
//   }
// }


 // return Scaffold(
    //     body: Container(
    //   width: double.infinity,
    //   decoration: const BoxDecoration(
    //       gradient: LinearGradient(
    //           colors: [Color(0x99FF9800), Colors.white, Color(0x66FFC46D)],
    //           stops: [-0.5, 0.4, 3.0],
    //           tileMode: TileMode.repeated,
    //           begin: Alignment.topLeft,
    //           end: Alignment.bottomRight)),
    //   child: Padding(padding: EdgeInsets.symmetric(vertical: 100.0,
    //         horizontal:10.0),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.only(left:8.0),
    //           child: Text(
    //                   'Profile details',
    //                   style: TextStyle(
    //                     color: Colors.black,
    //                     fontSize: 34,
    //                     fontFamily: 'Poppins',
    //                     fontWeight: FontWeight.w700,
    //                     height: 0.04,
    //                   ),
    //               ),
    //         ),        
    //         SizedBox(height: 10),
    //         Container(
    //             width: 350,
    //             child: Center(
    //               child: Padding(
    //                 padding: const EdgeInsets.all(
    //                     8.0), 
    //                 child: buildInstructionsText(),
    //               ),
    //             )),
    //         Center(
    //           child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Stack(
    //                 children: [
    //                   _image != null ?
    //                   CircleAvatar(
    //                     radius: 64,
    //                     backgroundImage: MemoryImage(_image!),
    //                     backgroundColor: Colors.grey,
    //                   ) :
    //                 CircleAvatar(
    //                     radius: 64,
    //                     backgroundImage: imageUrl != null
    //                       ? NetworkImage(imageUrl!)
    //                       : AssetImage('avatar.png') as ImageProvider<Object>?,
    //                     backgroundColor: Colors.grey,
    //                   ),
    //                   Positioned(
    //                     bottom: -10,
    //                     left: 80,
    //                     child: IconButton(
    //                       onPressed: selectImage,
    //                       icon: const Icon(Icons.add_a_photo),
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             ],
    //           ),
    //         ),
    //         SizedBox(height: 30),
            
    //         Container(
    //           padding: EdgeInsets.symmetric(horizontal: 20),
    //           child: TextField(
    //             controller:nameController,
    //             decoration: InputDecoration(
    //               labelText: "First name",
    //               hintText: "First name",
    //               labelStyle: TextStyle(
    //                 color: Colors.black.withOpacity(
    //                     0.4000000059604645), // Set the label text color
    //               ),
    //               border: OutlineInputBorder(
    //                 borderSide:
    //                     const BorderSide(color: Color(0x99E8E6EA), width: 1),
    //                 borderRadius: BorderRadius.circular(20),
    //               ),
    //               enabledBorder: OutlineInputBorder(
    //                 borderSide:
    //                     const BorderSide(color: Color(0x99E8E6EA), width: 1),
    //                 borderRadius: BorderRadius.circular(20),
    //               ),
    //               focusedBorder: OutlineInputBorder(
    //                 borderSide:
    //                     const BorderSide(color: Color(0x99E8E6EA), width: 1),
    //                 borderRadius: BorderRadius.circular(20),
    //               ),
    //               fillColor: Colors.white,
    //               filled: true,
    //             ),
    //             cursorColor: Colors.black,
    //           ),
    //         ),
    //         SizedBox(height: 20),
          
    //         Container(
    //           padding: EdgeInsets.symmetric(horizontal: 20),
    //           child: TextField(
    //             controller: bioController,
    //             decoration: InputDecoration(
    //               labelText: "Middle name",
    //               hintText: "Middle name",
    //               labelStyle: TextStyle(
    //                 color: Colors.black.withOpacity(
    //                     0.4000000059604645), // Set the label text color
    //               ),
    //               // Add the hint here
    //               border: OutlineInputBorder(
    //                 borderSide:
    //                     const BorderSide(color: Color(0x99E8E6EA), width: 1),
    //                 borderRadius: BorderRadius.circular(20),
    //               ),
    //               enabledBorder: OutlineInputBorder(
    //                 borderSide:
    //                     const BorderSide(color: Color(0x99E8E6EA), width: 1),
    //                 borderRadius: BorderRadius.circular(20),
    //               ),
    //               focusedBorder: OutlineInputBorder(
    //                 borderSide:
    //                     const BorderSide(color: Color(0x99E8E6EA), width: 1),
    //                 borderRadius: BorderRadius.circular(20),
    //               ),
    //               fillColor: Colors.white,
    //               filled: true,
    //             ),
    //             cursorColor: Colors.black,
    //           ),
    //         ),
    //         SizedBox(height: 20),
           
    //         Container(
    //           padding: EdgeInsets.symmetric(horizontal: 20),
    //           child: TextField(
    //             decoration: InputDecoration(
    //               labelText: "Last name",
    //               hintText: "Last name",
    //               labelStyle: TextStyle(
    //                 color: Colors.black.withOpacity(
    //                     0.4000000059604645), 
    //               ),
                 
    //               border: OutlineInputBorder(
    //                 borderSide:
    //                     const BorderSide(color: Color(0x99E8E6EA), width: 1),
    //                 borderRadius: BorderRadius.circular(20),
    //               ),
    //               enabledBorder: OutlineInputBorder(
    //                 borderSide:
    //                     const BorderSide(color: Color(0x99E8E6EA), width: 1),
    //                 borderRadius: BorderRadius.circular(20),
    //               ),
    //               focusedBorder: OutlineInputBorder(
    //                 borderSide:
    //                     const BorderSide(color: Color(0x99E8E6EA), width: 1),
    //                 borderRadius: BorderRadius.circular(20),
    //               ),
    //               fillColor: Colors.white,
    //               filled: true,
    //             ),
    //             cursorColor: Colors.black,
    //           ),
    //         ),
    //         SizedBox(height: 20),
          
    //         Container(
    //           padding: EdgeInsets.symmetric(horizontal: 20),
    //           child: TextField(
    //             decoration: InputDecoration(
    //               labelText: "Profile Display name",
    //               hintText: "Profile Display name",
    //               labelStyle: TextStyle(
    //                 color: Colors.black.withOpacity(
    //                     0.4000000059604645), 
    //               ),
    //               // Add the hint here
    //               border: OutlineInputBorder(
    //                 borderSide:
    //                     const BorderSide(color: Color(0x99E8E6EA), width: 1),
    //                 borderRadius: BorderRadius.circular(20),
    //               ),
    //               enabledBorder: OutlineInputBorder(
    //                 borderSide:
    //                     const BorderSide(color: Color(0x99E8E6EA), width: 1),
    //                 borderRadius: BorderRadius.circular(20),
    //               ),
    //               focusedBorder: OutlineInputBorder(
    //                 borderSide:
    //                     const BorderSide(color: Color(0x99E8E6EA), width: 1),
    //                 borderRadius: BorderRadius.circular(20),
    //               ),
    //               fillColor: Colors.white,
    //               filled: true,
    //             ),
    //             cursorColor: Colors.black,
    //           ),
    //         ),
            
    //         Spacer(),          
    //         Container(
    //           padding: EdgeInsets.symmetric(
    //             vertical: 20.0,
    //             horizontal: 20
    //           ),
    //           child: ElevatedButton(
    //             // onPressed: saveProfile,
    //             onPressed: () {
    //               Get.to(()=> FirstAndLastNameScreen());
    //             },
    //             style: ElevatedButton.styleFrom(
    //               backgroundColor: Color(0xFFFFC700),
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(10),
    //               ),
    //               minimumSize: Size(350, 0), // Set the button width as needed
    //             ),
    //             child: Padding(
    //               padding: EdgeInsets.all(20.0), // Adjust the padding as needed
    //               child: Text(
    //                 'Confirm',
    //                 style: TextStyle(
    //                   color: Colors.white,
    //                   fontSize: 16,
    //                   fontFamily: 'Poppins',
    //                   fontWeight: FontWeight.w700,
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
            
    //       ],
    //     ),
    //   ),
      
    // ));


// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';


// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//     FirebaseAuth auth = FirebaseAuth.instance;
//   User? user;

// @override
//   void initState() {
//     super.initState();
//     if(auth.currentUser!=null)
//       {
//         user = auth.currentUser;
//       }
//   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile'),
//         automaticallyImplyLeading: false,
//         actions: [
//           IconButton(
//             onPressed: () async{
//               await FirebaseAuth.instance.signOut();
//              // Navigator.pop(context);
//               Navigator.pushNamed(context, '/');
//             },
//             icon: const Icon(Icons.logout),
//           )
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'NAME: ${user?.displayName} ',
//               style: Theme.of(context).textTheme.bodyMedium,
//             ),
//             const SizedBox(height: 16.0),
//             Text(
//               'EMAIL: ${user?.email}',
//               style: Theme.of(context).textTheme.bodyMedium,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


 // decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //         colors: [Color(0x99FF9800), Colors.white, Color(0x66FFC46D)],
      //         stops: [-0.5, 0.4, 3.0],
      //         tileMode: TileMode.repeated, // Adjusted stops
      //         begin: Alignment.topLeft,
      //         end: Alignment.bottomRight)),

         // SingleChildScrollView(
                  //   child: Padding(
                  //     padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  //     child: Column(
                  //       children: [
                  //         for (int i = 1; i < 11; i++)
                  //           InkWell(
                  //             onTap: () {},
                  //             child: Container(
                  //               margin: EdgeInsets.symmetric(vertical: 12),
                  //               child: Row(
                  //                 children: [
                  //                   Container(
                  //                     width: 48,
                  //                     height: 48,
                  //                     decoration: BoxDecoration(
                  //                       color: Colors.white,
                  //                       shape: BoxShape.circle,
                  //                     ),
                  //                     child: ClipRRect(
                  //                       borderRadius: BorderRadius.circular(40),
                  //                       child: Image.asset(
                  //                         i % 2 == 0 ? "photo-messages-6.png" : "photo-messages-7.png",
                  //                         height: 48,
                  //                         width: 48,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Padding(
                  //                     padding: EdgeInsets.only(left: 20),
                  //                     child: Column(
                  //                       crossAxisAlignment: CrossAxisAlignment.start,
                  //                       children: [
                  //                         Text(
                  //                           i % 2 == 0 ? "Different Title" : "Programmer",
                  //                           style: TextStyle(
                  //                             fontSize: 18,
                  //                             fontWeight: FontWeight.bold,
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 8),
                  //                         Text(
                  //                           i % 2 == 0 ? "This is a different subtext" : "Hi, Programmer, how are you?",
                  //                           style: TextStyle(
                  //                             fontSize: 15,
                  //                             fontWeight: FontWeight.w500,
                  //                             color: Colors.black54,
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                   ),
                  //                   Spacer(),
                  //                   Column(
                  //                     children: [
                  //                       Text(
                  //                         "12:15",
                  //                         style: TextStyle(
                  //                           fontSize: 15,
                  //                           color: Colors.black45,
                  //                           fontWeight: FontWeight.w500,
                  //                         ),
                  //                       ),
                  //                       SizedBox(height: 6),
                  //                       Container(
                  //                         alignment: Alignment.center,
                  //                         width: 27,
                  //                         height: 27,
                  //                         decoration: BoxDecoration(
                  //                           color: Color(0xFFFFC700),
                  //                           borderRadius: BorderRadius.circular(20),
                  //                         ),
                  //                         child: Text(
                  //                           i % 2 == 0 ? "5" : "2", // Different message counts
                  //                           style: TextStyle(
                  //                             fontWeight: FontWeight.w500,
                  //                             color: Colors.white,
                  //                           ),
                  //                         ),
                  //                       )
                  //                     ],
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           )
                  //       ],
                  //     ),
                  //   ),
                  // ),


      //                     Positioned(
      //                         left: 0,
      //                         top: 377,
      //                         child: Container(
      //                             width: 295,
      //                             height: 56,
      //                             child: Stack(
      //                                 children: [
      //                                     Positioned(
      //                                         left: 66,
      //                                         top: 7,
      //                                         child: SizedBox(
      //                                             width: 159,
      //                                             child: Text(
      //                                                 'Grace',
      //                                                 style: TextStyle(
      //                                                     color: Colors.black,
      //                                                     fontSize: 14,
      //                                                     fontFamily: 'Poppins',
      //                                                     fontWeight: FontWeight.w700,
      //                                                     height: 0.11,
      //                                                 ),
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 66,
      //                                         top: 28,
      //                                         child: SizedBox(
      //                                             width: 189,
      //                                             child: Text.rich(
      //                                                 TextSpan(
      //                                                     children: [
      //                                                         TextSpan(
      //                                                             text: 'You:',
      //                                                             style: TextStyle(
      //                                                                 color: Colors.black.withOpacity(0.4000000059604645),
      //                                                                 fontSize: 14,
      //                                                                 fontFamily: 'Poppins',
      //                                                                 fontWeight: FontWeight.w400,
      //                                                                 height: 0.11,
      //                                                             ),
      //                                                         ),
      //                                                         TextSpan(
      //                                                             text: ' Great I will write later..',
      //                                                             style: TextStyle(
      //                                                                 color: Colors.black,
      //                                                                 fontSize: 14,
      //                                                                 fontFamily: 'Poppins',
      //                                                                 fontWeight: FontWeight.w400,
      //                                                                 height: 0.11,
      //                                                             ),
      //                                                         ),
      //                                                     ],
      //                                                 ),
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 255,
      //                                         top: 9,
      //                                         child: SizedBox(
      //                                             width: 40,
      //                                             child: Text(
      //                                                 '1 hour',
      //                                                 textAlign: TextAlign.right,
      //                                                 style: TextStyle(
      //                                                     color: Color(0xFFADAFBB),
      //                                                     fontSize: 12,
      //                                                     fontFamily: 'Poppins',
      //                                                     fontWeight: FontWeight.w700,
      //                                                     height: 0.12,
      //                                                 ),
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 0,
      //                                         top: 0,
      //                                         child: Container(
      //                                             width: 56,
      //                                             height: 56,
      //                                             child: Stack(
      //                                                 children: [
      //                                                     Positioned(
      //                                                         left: 0,
      //                                                         top: 0,
      //                                                         child: Container(
      //                                                             width: 56,
      //                                                             height: 56,
      //                                                             decoration: ShapeDecoration(
      //                                                                 color: Colors.white,
      //                                                                 shape: OvalBorder(
      //                                                                     side: BorderSide(width: 2, color: Color(0xFFF27121)),
      //                                                                 ),
      //                                                             ),
      //                                                         ),
      //                                                     ),
      //                                                     Positioned(
      //                                                         left: 4,
      //                                                         top: 4,
      //                                                         child: Container(
      //                                                             width: 48,
      //                                                             height: 48,
      //                                                             decoration: ShapeDecoration(
      //                                                                 image: DecorationImage(
      //                                                                     image: NetworkImage("https://via.placeholder.com/48x48"),
      //                                                                     fit: BoxFit.cover,
      //                                                                 ),
      //                                                                 shape: OvalBorder(),
      //                                                             ),
      //                                                         ),
      //                                                     ),
      //                                                 ],
      //                                             ),
      //                                         ),
      //                                     ),
      //                                 ],
      //                             ),
      //                         ),
      //                     ),
      //                     Positioned(
      //                         left: 4,
      //                         top: 313,
      //                         child: Container(
      //                             width: 291,
      //                             height: 48,
      //                             child: Stack(
      //                                 children: [
      //                                     Positioned(
      //                                         left: 62,
      //                                         top: 3,
      //                                         child: SizedBox(
      //                                             width: 159,
      //                                             child: Text(
      //                                                 'Chloe',
      //                                                 style: TextStyle(
      //                                                     color: Colors.black,
      //                                                     fontSize: 14,
      //                                                     fontFamily: 'Poppins',
      //                                                     fontWeight: FontWeight.w700,
      //                                                     height: 0.11,
      //                                                 ),
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 62,
      //                                         top: 24,
      //                                         child: SizedBox(
      //                                             width: 189,
      //                                             child: Text.rich(
      //                                                 TextSpan(
      //                                                     children: [
      //                                                         TextSpan(
      //                                                             text: 'You:',
      //                                                             style: TextStyle(
      //                                                                 color: Colors.black.withOpacity(0.4000000059604645),
      //                                                                 fontSize: 14,
      //                                                                 fontFamily: 'Poppins',
      //                                                                 fontWeight: FontWeight.w400,
      //                                                                 height: 0.11,
      //                                                             ),
      //                                                         ),
      //                                                         TextSpan(
      //                                                             text: ' Hello how are you?',
      //                                                             style: TextStyle(
      //                                                                 color: Colors.black,
      //                                                                 fontSize: 14,
      //                                                                 fontFamily: 'Poppins',
      //                                                                 fontWeight: FontWeight.w400,
      //                                                                 height: 0.11,
      //                                                             ),
      //                                                         ),
      //                                                     ],
      //                                                 ),
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 248,
      //                                         top: 5,
      //                                         child: Text(
      //                                             '55 min',
      //                                             textAlign: TextAlign.right,
      //                                             style: TextStyle(
      //                                                 color: Color(0xFFADAFBB),
      //                                                 fontSize: 12,
      //                                                 fontFamily: 'Poppins',
      //                                                 fontWeight: FontWeight.w700,
      //                                                 height: 0.12,
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 0,
      //                                         top: 0,
      //                                         child: Container(
      //                                             width: 48,
      //                                             height: 48,
      //                                             child: Stack(
      //                                                 children: [
      //                                                     Positioned(
      //                                                         left: 0,
      //                                                         top: 0,
      //                                                         child: Container(
      //                                                             width: 48,
      //                                                             height: 48,
      //                                                             decoration: ShapeDecoration(
      //                                                                 image: DecorationImage(
      //                                                                     image: NetworkImage("https://via.placeholder.com/48x48"),
      //                                                                     fit: BoxFit.cover,
      //                                                                 ),
      //                                                                 shape: OvalBorder(),
      //                                                             ),
      //                                                         ),
      //                                                     ),
      //                                                 ],
      //                                             ),
      //                                         ),
      //                                     ),
      //                                 ],
      //                             ),
      //                         ),
      //                     ),
      //                     Positioned(
      //                         left: 4,
      //                         top: 245,
      //                         child: Container(
      //                             width: 291,
      //                             height: 48,
      //                             child: Stack(
      //                                 children: [
      //                                     Positioned(
      //                                         left: 62,
      //                                         top: 3,
      //                                         child: SizedBox(
      //                                             width: 159,
      //                                             child: Text(
      //                                                 'Penelope',
      //                                                 style: TextStyle(
      //                                                     color: Colors.black,
      //                                                     fontSize: 14,
      //                                                     fontFamily: 'Poppins',
      //                                                     fontWeight: FontWeight.w700,
      //                                                     height: 0.11,
      //                                                 ),
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 62,
      //                                         top: 24,
      //                                         child: SizedBox(
      //                                             width: 229,
      //                                             child: Text.rich(
      //                                                 TextSpan(
      //                                                     children: [
      //                                                         TextSpan(
      //                                                             text: 'You: ',
      //                                                             style: TextStyle(
      //                                                                 color: Colors.black.withOpacity(0.4000000059604645),
      //                                                                 fontSize: 14,
      //                                                                 fontFamily: 'Poppins',
      //                                                                 fontWeight: FontWeight.w400,
      //                                                                 height: 0.11,
      //                                                             ),
      //                                                         ),
      //                                                         TextSpan(
      //                                                             text: 'Hey! What’s up, long time..',
      //                                                             style: TextStyle(
      //                                                                 color: Colors.black,
      //                                                                 fontSize: 14,
      //                                                                 fontFamily: 'Poppins',
      //                                                                 fontWeight: FontWeight.w400,
      //                                                                 height: 0.11,
      //                                                             ),
      //                                                         ),
      //                                                     ],
      //                                                 ),
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 248,
      //                                         top: 5,
      //                                         child: Text(
      //                                             '50 min',
      //                                             textAlign: TextAlign.right,
      //                                             style: TextStyle(
      //                                                 color: Color(0xFFADAFBB),
      //                                                 fontSize: 12,
      //                                                 fontFamily: 'Poppins',
      //                                                 fontWeight: FontWeight.w700,
      //                                                 height: 0.12,
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 0,
      //                                         top: 0,
      //                                         child: Container(
      //                                             width: 48,
      //                                             height: 48,
      //                                             child: Stack(
      //                                                 children: [
      //                                                     Positioned(
      //                                                         left: 0,
      //                                                         top: 0,
      //                                                         child: Container(
      //                                                             width: 48,
      //                                                             height: 48,
      //                                                             decoration: ShapeDecoration(
      //                                                                 image: DecorationImage(
      //                                                                     image: NetworkImage("https://via.placeholder.com/48x48"),
      //                                                                     fit: BoxFit.cover,
      //                                                                 ),
      //                                                                 shape: OvalBorder(),
      //                                                             ),
      //                                                         ),
      //                                                     ),
      //                                                 ],
      //                                             ),
      //                                         ),
      //                                     ),
      //                                 ],
      //                             ),
      //                         ),
      //                     ),
      //                     Positioned(
      //                         left: 0,
      //                         top: 173,
      //                         child: Container(
      //                             width: 295,
      //                             height: 56,
      //                             child: Stack(
      //                                 children: [
      //                                     Positioned(
      //                                         left: 66,
      //                                         top: 7,
      //                                         child: SizedBox(
      //                                             width: 159,
      //                                             child: Text(
      //                                                 'Elizabeth',
      //                                                 style: TextStyle(
      //                                                     color: Colors.black,
      //                                                     fontSize: 14,
      //                                                     fontFamily: 'Poppins',
      //                                                     fontWeight: FontWeight.w700,
      //                                                     height: 0.11,
      //                                                 ),
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 66,
      //                                         top: 28,
      //                                         child: SizedBox(
      //                                             width: 189,
      //                                             child: Text(
      //                                                 'Ok, see you then.',
      //                                                 style: TextStyle(
      //                                                     color: Colors.black,
      //                                                     fontSize: 14,
      //                                                     fontFamily: 'Poppins',
      //                                                     fontWeight: FontWeight.w400,
      //                                                     height: 0.11,
      //                                                 ),
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 253,
      //                                         top: 9,
      //                                         child: Text(
      //                                             '33 min',
      //                                             textAlign: TextAlign.right,
      //                                             style: TextStyle(
      //                                                 color: Color(0xFFADAFBB),
      //                                                 fontSize: 12,
      //                                                 fontFamily: 'Poppins',
      //                                                 fontWeight: FontWeight.w700,
      //                                                 height: 0.12,
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 0,
      //                                         top: 0,
      //                                         child: Container(
      //                                             width: 56,
      //                                             height: 56,
      //                                             child: Stack(
      //                                                 children: [
      //                                                     Positioned(
      //                                                         left: 0,
      //                                                         top: 0,
      //                                                         child: Container(
      //                                                             width: 56,
      //                                                             height: 56,
      //                                                             decoration: ShapeDecoration(
      //                                                                 color: Colors.white,
      //                                                                 shape: OvalBorder(
      //                                                                     side: BorderSide(width: 2, color: Color(0xFFF27121)),
      //                                                                 ),
      //                                                             ),
      //                                                         ),
      //                                                     ),
      //                                                     Positioned(
      //                                                         left: 4,
      //                                                         top: 4,
      //                                                         child: Container(
      //                                                             width: 48,
      //                                                             height: 48,
      //                                                             decoration: ShapeDecoration(
      //                                                                 image: DecorationImage(
      //                                                                     image: NetworkImage("https://via.placeholder.com/48x48"),
      //                                                                     fit: BoxFit.cover,
      //                                                                 ),
      //                                                                 shape: RoundedRectangleBorder(
      //                                                                     borderRadius: BorderRadius.circular(100),
      //                                                                 ),
      //                                                             ),
      //                                                         ),
      //                                                     ),
      //                                                 ],
      //                                             ),
      //                                         ),
      //                                     ),
      //                                 ],
      //                             ),
      //                         ),
      //                     ),
      //                     Positioned(
      //                         left: 4,
      //                         top: 109,
      //                         child: Container(
      //                             width: 291,
      //                             height: 48,
      //                             child: Stack(
      //                                 children: [
      //                                     Positioned(
      //                                         left: 62,
      //                                         top: 3,
      //                                         child: SizedBox(
      //                                             width: 159,
      //                                             child: Text(
      //                                                 'Abigail',
      //                                                 style: TextStyle(
      //                                                     color: Colors.black,
      //                                                     fontSize: 14,
      //                                                     fontFamily: 'Poppins',
      //                                                     fontWeight: FontWeight.w700,
      //                                                     height: 0.11,
      //                                                 ),
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 62,
      //                                         top: 24,
      //                                         child: SizedBox(
      //                                             width: 189,
      //                                             child: Text(
      //                                                 'Typing..',
      //                                                 style: TextStyle(
      //                                                     color: Colors.black,
      //                                                     fontSize: 14,
      //                                                     fontFamily: 'Poppins',
      //                                                     fontWeight: FontWeight.w400,
      //                                                     height: 0.11,
      //                                                 ),
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 250,
      //                                         top: 5,
      //                                         child: Text(
      //                                             '27 min',
      //                                             textAlign: TextAlign.right,
      //                                             style: TextStyle(
      //                                                 color: Color(0xFFADAFBB),
      //                                                 fontSize: 12,
      //                                                 fontFamily: 'Poppins',
      //                                                 fontWeight: FontWeight.w700,
      //                                                 height: 0.12,
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 0,
      //                                         top: 0,
      //                                         child: Container(
      //                                             width: 48,
      //                                             height: 48,
      //                                             child: Stack(
      //                                                 children: [
      //                                                     Positioned(
      //                                                         left: 0,
      //                                                         top: 0,
      //                                                         child: Container(
      //                                                             width: 48,
      //                                                             height: 48,
      //                                                             decoration: ShapeDecoration(
      //                                                                 image: DecorationImage(
      //                                                                     image: NetworkImage("https://via.placeholder.com/48x48"),
      //                                                                     fit: BoxFit.cover,
      //                                                                 ),
      //                                                                 shape: OvalBorder(),
      //                                                             ),
      //                                                         ),
      //                                                     ),
      //                                                 ],
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 271,
      //                                         top: 26,
      //                                         child: Container(
      //                                             width: 20,
      //                                             height: 20,
      //                                             child: Stack(
      //                                                 children: [
      //                                                     Positioned(
      //                                                         left: 0,
      //                                                         top: 0,
      //                                                         child: Container(
      //                                                             width: 20,
      //                                                             height: 20,
      //                                                             decoration: ShapeDecoration(
      //                                                                 color: Color(0xFFFFC700),
      //                                                                 shape: OvalBorder(),
      //                                                             ),
      //                                                         ),
      //                                                     ),
      //                                                     Positioned(
      //                                                         left: 1,
      //                                                         top: 0,
      //                                                         child: SizedBox(
      //                                                             width: 18,
      //                                                             child: Text(
      //                                                                 '2',
      //                                                                 textAlign: TextAlign.center,
      //                                                                 style: TextStyle(
      //                                                                     color: Colors.white,
      //                                                                     fontSize: 12,
      //                                                                     fontFamily: 'Poppins',
      //                                                                     fontWeight: FontWeight.w700,
      //                                                                     height: 0.12,
      //                                                                 ),
      //                                                             ),
      //                                                         ),
      //                                                     ),
      //                                                 ],
      //                                             ),
      //                                         ),
      //                                     ),
      //                                 ],
      //                             ),
      //                         ),
      //                     ),
      //                     Positioned(
      //                         left: 0,
      //                         top: 37,
      //                         child: Container(
      //                             width: 295,
      //                             height: 56,
      //                             child: Stack(
      //                                 children: [
      //                                     Positioned(
      //                                         left: 275,
      //                                         top: 30,
      //                                         child: Container(
      //                                             width: 20,
      //                                             height: 20,
      //                                             child: Stack(
      //                                                 children: [
      //                                                     Positioned(
      //                                                         left: 0,
      //                                                         top: 0,
      //                                                         child: Container(
      //                                                             width: 20,
      //                                                             height: 20,
      //                                                             decoration: ShapeDecoration(
      //                                                                 color: Color(0xFFFFC700),
      //                                                                 shape: OvalBorder(),
      //                                                             ),
      //                                                         ),
      //                                                     ),
      //                                                     Positioned(
      //                                                         left: 1,
      //                                                         top: 0,
      //                                                         child: SizedBox(
      //                                                             width: 18,
      //                                                             child: Text(
      //                                                                 '1',
      //                                                                 textAlign: TextAlign.center,
      //                                                                 style: TextStyle(
      //                                                                     color: Colors.white,
      //                                                                     fontSize: 12,
      //                                                                     fontFamily: 'Poppins',
      //                                                                     fontWeight: FontWeight.w700,
      //                                                                     height: 0.12,
      //                                                                 ),
      //                                                             ),
      //                                                         ),
      //                                                     ),
      //                                                 ],
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 254,
      //                                         top: 9,
      //                                         child: Text(
      //                                             '23 min',
      //                                             textAlign: TextAlign.right,
      //                                             style: TextStyle(
      //                                                 color: Color(0xFFADAFBB),
      //                                                 fontSize: 12,
      //                                                 fontFamily: 'Poppins',
      //                                                 fontWeight: FontWeight.w700,
      //                                                 height: 0.12,
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 66,
      //                                         top: 28,
      //                                         child: SizedBox(
      //                                             width: 189,
      //                                             child: Text(
      //                                                 'Sticker 😍',
      //                                                 style: TextStyle(
      //                                                     color: Colors.black,
      //                                                     fontSize: 14,
      //                                                     fontFamily: 'Poppins',
      //                                                     fontWeight: FontWeight.w400,
      //                                                     height: 0.11,
      //                                                 ),
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 66,
      //                                         top: 7,
      //                                         child: SizedBox(
      //                                             width: 159,
      //                                             child: Text(
      //                                                 'Emelie',
      //                                                 style: TextStyle(
      //                                                     color: Colors.black,
      //                                                     fontSize: 14,
      //                                                     fontFamily: 'Poppins',
      //                                                     fontWeight: FontWeight.w700,
      //                                                     height: 0.11,
      //                                                 ),
      //                                             ),
      //                                         ),
      //                                     ),
      //                                     Positioned(
      //                                         left: 0,
      //                                         top: 0,
      //                                         child: Container(
      //                                             width: 56,
      //                                             height: 56,
      //                                             child: Stack(
      //                                                 children: [
      //                                                     Positioned(
      //                                                         left: 0,
      //                                                         top: 0,
      //                                                         child: Container(
      //                                                             width: 56,
      //                                                             height: 56,
      //                                                             decoration: ShapeDecoration(
      //                                                                 color: Colors.white,
      //                                                                 shape: OvalBorder(
      //                                                                     side: BorderSide(width: 2, color: Color(0xFFF27121)),
      //                                                                 ),
      //                                                             ),
      //                                                         ),
      //                                                     ),
      //                                                     Positioned(
      //                                                         left: 4,
      //                                                         top: 4,
      //                                                         child: Container(
      //                                                             width: 48,
      //                                                             height: 48,
      //                                                             decoration: ShapeDecoration(
      //                                                                 image: DecorationImage(
      //                                                                     image: NetworkImage("https://via.placeholder.com/48x48"),
      //                                                                     fit: BoxFit.cover,
      //                                                                 ),
      //                                                                 shape: OvalBorder(),
      //                                                             ),
      //                                                         ),
      //                                                     ),
      //                                                 ],
      //                                             ),
      //                                         ),
      //                                     ),
      //                                 ],
      //                             ),
      //                         ),
      //                     ),
                        
                     
      

      // Stack(
      //     children: [
      //         ])
      //         //Activity row
      //         Positioned(
      //             left: 40,
      //             top: 174,
      //             child: Container(
      //                 width: 390,
      //                 height: 128,
      //                 child:  ListView(
      //                   scrollDirection: Axis.horizontal,
      //                     children: [
      //                       createPersonWidget('You', 'https://via.placeholder.com/58x58'),
      //                       createPersonWidget('Emma', 'https://via.placeholder.com/58x58'),
      //                       createPersonNonActiveWidget('Ava', 'https://via.placeholder.com/58x58'),
      //                       createPersonNonActiveWidget('Sophia', 'https://via.placeholder.com/58x58'),
      //                       createPersonWidget('Amelia', 'https://via.placeholder.com/58x58'),
      //                     ],
      //                   ),
                      
      //               ),
      //             // child: Container(
      //             //       width: 390,
      //             //       height: 128,
      //             //       child: Stack(
      //             //           children: [
      //             //             Positioned(
      //             //                   left: 0,
      //             //                   top: 20,
      //             //                   child: SizedBox(
      //             //                       width: 291,
      //             //                       child: Text(
      //             //                           'Activities',
      //             //                           style: TextStyle(
      //             //                               color: Colors.black,
      //             //                               fontSize: 18,
      //             //                               fontFamily: 'Poppins',
      //             //                               fontWeight: FontWeight.w700,
      //             //                               height: 0.08,
      //             //                           ),
      //             //                       ),
      //             //                   ),
      //             //               ),
      //             //              Positioned(
      //             //               left: 0,
      //             //               top: 30,
      //             //               child: Row(
      //             //                 children: [
      //             //                   Positioned(
      //             //                     left: 0,
      //             //                     top: 37,
      //             //                     child: Container(
      //             //                       width: 66,
      //             //                       height: 91,
      //             //                       child: Stack(
      //             //                         children: [
      //             //                           createPersonWidget('You', 'https://via.placeholder.com/58x58'),
      //             //                         ],
      //             //                       ),
      //             //                     ),
      //             //                   ),
      //             //                   Positioned(
      //             //                     left: 81,
      //             //                     top: 37,
      //             //                     child: Container(
      //             //                       width: 66,
      //             //                       height: 91,
      //             //                       child: Stack(
      //             //                         children: [
      //             //                           createPersonWidget('Emma', 'https://via.placeholder.com/58x58'),
      //             //                         ],
      //             //                       ),
      //             //                     ),
      //             //                   ),
      //             //                   Positioned(
      //             //                     left: 162,
      //             //                     top: 41,
      //             //                     child: Container(
      //             //                       width: 66,
      //             //                       height: 87,
      //             //                       child: Stack(
      //             //                         children: [
      //             //                           createPersonNonActiveWidget('Ava', 'https://via.placeholder.com/58x58'),
      //             //                         ],
      //             //                       ),
      //             //                     ),
      //             //                   ),
      //             //                   Positioned(
      //             //                     left: 243,
      //             //                     top: 41,
      //             //                     child: Container(
      //             //                       width: 66,
      //             //                       height: 87,
      //             //                       child: Stack(
      //             //                         children: [
      //             //                           createPersonNonActiveWidget('Sophia', 'https://via.placeholder.com/58x58'),
      //             //                         ],
      //             //                       ),
      //             //                     ),
      //             //                   ),
      //             //                   Positioned(
      //             //                     left: 324,
      //             //                     top: 37,
      //             //                     child: Container(
      //             //                       width: 66,
      //             //                       height: 91,
      //             //                       child: Stack(
      //             //                         children: [
      //             //                           createPersonWidget('Amelia', 'https://via.placeholder.com/58x58'),
      //             //                         ],
      //             //                       ),
      //             //                     ),
      //             //                   ),
      //             //                 ],
      //             //               ),
      //             //             ),
    
      //             //           ],
      //             //       ),
                    
      //             // ),
      //         ),           
      //         Positioned(
      //             left: 30,
      //             top: 116,
      //             child: Container(
      //                 width: 295,
      //                 height: 48,
      //                 child: Stack(
      //                     children: [
      //                         Positioned(
      //                         left: 0,
      //                         top: 0,
      //                         child: Container(
      //                           width: 295,
      //                           height: 48,
      //                           child: Stack(
      //                             children: [
      //                               Container(
      //                                 width: 295,
      //                                 height: 48,
      //                                 decoration: ShapeDecoration(
      //                                   color: Colors.white,
      //                                   shape: RoundedRectangleBorder(
      //                                     side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
      //                                     borderRadius: BorderRadius.circular(15),
      //                                   ),
      //                                 ),
      //                               ),
      //                               Positioned(
      //                                 left: 10,
      //                                 top: 14,
      //                                 child: Container(
      //                                   width: 24,
      //                                   height: 20,
      //                                   child: Image.asset(
      //                                   'search.png', 
      //                                   width: 24,
      //                                   height: 20,
      //                                 ),
      //                                 ),
      //                               ),
      //                               Positioned(
      //                                 left: 40,
      //                                 top: 14,
      //                                 child: Column(
      //                                   children: [
      //                                     Container(
      //                                       width: 214, 
      //                                       height: 20,
      //                                       child: TextField(
      //                                         // controller: searchController,
      //                                         //     onChanged: (text) {
      //                                         //       setState(() {}); //
      //                                         //     },
      //                                         decoration: InputDecoration(
      //                                           hintText: 'Search \.',
      //                                           hintStyle: TextStyle(
      //                                             color: Colors.black.withOpacity(0.4000000059604645),
      //                                             fontSize: 14,
      //                                             fontFamily: 'Poppins',
      //                                             fontWeight: FontWeight.w400,
      //                                           ),
      //                                           border: InputBorder.none,
      //                                         ),
      //                                       ),
      //                                     ),
      //                                   ],
      //                                 ),
      //                               ),
      //                             ],
      //                           ),
      //                         ),
      //                       ),
      //                     ],
      //                 ),
      //             ),
      //         ),
      //         Positioned(
      //             left: 44,
      //             top: 44,
      //             child: Container(
      //                 width: 291,
      //                 height: 52,
      //                 child: Stack(
      //                     children: [
      //                         Positioned(
      //                             left: 239,
      //                             top: 0,
      //                             child: Container(
      //                                 width: 52,
      //                                 height: 52,
      //                                 child: Stack(
      //                                     children: [
      //                                         Positioned(
      //                                             left: 0,
      //                                             top: 0,
      //                                             child: Container(
      //                                                     width: 52,
      //                                                     height: 52,
      //                                                     decoration: ShapeDecoration(
      //                                                       color: Colors.white,
      //                                                       shape: RoundedRectangleBorder(
      //                                                         side: BorderSide(
      //                                                             width: 1, color: Color(0xFFE8E6EA)),
      //                                                         borderRadius: BorderRadius.circular(15),
      //                                                       ),
      //                                                     ),
      //                                                     child: Center(
      //                                                       child: IconButton(
      //                                                         iconSize: 20,
      //                                                         icon: const Icon(
      //                                                           Icons.tune,
      //                                                           color: Color(0xFFFFC700),
      //                                                         ),
      //                                                         onPressed: () {
      //                                                           Navigator.pop(context);
      //                                                         },
      //                                                       ),
      //                                                     ),
      //                                                   ),
      //                                         ),
      //                                     ],
      //                                 ),
      //                             ),
      //                         ),
      //                         Positioned(
      //                             left: 0,
      //                             top: 0,
      //                             child: SizedBox(
      //                                 width: 199,
      //                                 child: Text(
      //                                     'Messages2',
      //                                     style: TextStyle(
      //                                         color: Colors.black,
      //                                         fontSize: 34,
      //                                         fontFamily: 'Poppins',
      //                                         fontWeight: FontWeight.w700,
      //                                     ),
      //                                 ),
      //                             ),
      //                         ),
      //                     ],
      //                 ),
      //             ),
      //         ),
      //         Positioned(
      //             left: 0,
      //             top: 778,
      //             child: Container(
      //                 width: 375,
      //                 height: 34,
      //                 decoration: BoxDecoration(color: Color(0xFFF3F3F3)),
      //                 child: Stack(
      //                     children: [
      //                         Positioned(
      //                             left: 120,
      //                             top: 21,
      //                             child: Container(
      //                                 width: 134,
      //                                 height: 5,
      //                                 decoration: ShapeDecoration(
      //                                     color: Colors.black,
      //                                     shape: RoundedRectangleBorder(
      //                                         borderRadius: BorderRadius.circular(100),
      //                                     ),
      //                                 ),
      //                             ),
      //                         ),
      //                     ],
      //                 ),
      //             ),
      //         ),          
      //     ],
        // ),
  

  

                        // card  
                          // Positioned(
                          //     left: 40,
                          //     top: 230,
                          //     child:
                          //     Container(
                          //         padding: EdgeInsets.only(left: 40),
                          //         child: SingleChildScrollView(
                          //         scrollDirection: Axis.vertical,
                          //         child: Column(
                          //           children: [
                          //             Row(
                          //               children: [
                          //                 buildCard("photo-matches-1.png", 'Leilani, 19'),
                          //                 buildCard("photo-matches-3.png", 'Reagan, 24'),
                          //               ],
                          //             ),
                          //             Row(
                          //               children: [
                          //                 buildCard("photo-matches-2.png", 'Annabelle, 20'),
                          //                 buildCard("photo-matches-4.png", 'Hadley, 25'),
                          //               ],
                          //               // Add more rows with two cards each here
                          //             ),
                          //             Row(
                          //               children: [
                          //                 buildCard("photo-matches-2.png", 'Annabelle, 20'),
                          //                 buildCard("photo-matches-4.png", 'Hadley, 25'),
                          //               ],
                          //               // Add more rows with two cards each here
                          //             ),
                          //             Row(
                          //               children: [
                          //                 buildCard("photo-matches-2.png", 'Annabelle, 20'),
                          //                 buildCard("photo-matches-4.png", 'Hadley, 25'),
                          //               ],
                          //               // Add more rows with two cards each here
                          //             ),
                          //             Row(
                          //               children: [
                          //                 buildCard("photo-matches-2.png", 'Annabelle, 20'),
                          //                 buildCard("photo-matches-4.png", 'Hadley, 25'),
                          //               ],
                          //               // Add more rows with two cards each here
                          //             ),
                          //           ],
                          //         ),
                          //       ),
                          //       )
                          //     ),   
                          //     Positioned(
                          //       left: 40,
                          //       top: 230,
                          //       child: ListView(
                          //         children: [
                          //           Padding(
                          //             padding: EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 4.0), 
                          //             child:Column(
                          //           children: [
                          //             Row(
                          //               children: [
                          //                 buildCard("photo-matches-1.png", 'Leilani, 19'),
                          //                 buildCard("photo-matches-3.png", 'Reagan, 24'),
                          //               ],
                          //             ),
                          //             Row(
                          //               children: [
                          //                 buildCard("photo-matches-2.png", 'Annabelle, 20'),
                          //                 buildCard("photo-matches-4.png", 'Hadley, 25'),
                          //               ],
                          //               // Add more rows with two cards each here
                          //             ),])
                          //                 )
                          //               ]
                          //               )
                          //             ),  
                          // Positioned(
                          //     left: 40,
                          //     top: 230,
                          //     child: Container(
                          //         width: 140,
                          //         height: 200,
                          //         child: Stack(
                          //             children: [
                          //                 Positioned(
                          //                     left: 0,
                          //                     top: 0,
                          //                     child: Container(
                          //                         width: 140,
                          //                         height: 200,
                          //                         decoration: ShapeDecoration(
                          //                             image: DecorationImage(
                          //                                 image: AssetImage("photo-matches-1.png"),
                          //                                 fit: BoxFit.fill,
                          //                             ),
                          //                             shape: RoundedRectangleBorder(
                          //                                 borderRadius: BorderRadius.circular(15),
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 16,
                          //                     top: 132,
                          //                     child: SizedBox(
                          //                         width: 108,
                          //                         child: Text(
                          //                             'Leilani, 19',
                          //                             style: TextStyle(
                          //                                 color: Colors.white,
                          //                                 fontSize: 16,
                          //                                 fontFamily: 'Poppins',
                          //                                 fontWeight: FontWeight.w700,
                          //                                 height: 0.09,
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 0,
                          //                     top: 160,
                          //                     child: Container(
                          //                         width: 140,
                          //                         height: 40,
                          //                         decoration: ShapeDecoration(
                          //                             color: Colors.black,
                          //                             shape: RoundedRectangleBorder(
                          //                                 borderRadius: BorderRadius.only(
                          //                                     bottomLeft: Radius.circular(15),
                          //                                     bottomRight: Radius.circular(15),
                          //                                 ),
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 0,
                          //                     top: 160,
                          //                     child: Container(
                          //                         width: 140,
                          //                         height: 40,
                          //                         child: Stack(
                          //                             children: [
                          //                                 Positioned(
                          //                                     left: 0,
                          //                                     top: 0,
                          //                                     child: Container(
                          //                                         width: 140,
                          //                                         height: 40,
                          //                                         decoration: ShapeDecoration(
                          //                                             color: Colors.black,
                          //                                             shape: RoundedRectangleBorder(
                          //                                                 borderRadius: BorderRadius.only(
                          //                                                     bottomLeft: Radius.circular(15),
                          //                                                     bottomRight: Radius.circular(15),
                          //                                                 ),
                          //                                             ),
                          //                                         ),
                          //                                     ),
                          //                                 ),
                          //                                 Positioned(
                          //                                     left: 0,
                          //                                     top: -160,
                          //                                     child: Container(
                          //                                         width: 140,
                          //                                         height: 200,
                          //                                         decoration: ShapeDecoration(
                          //                                             image: DecorationImage(
                          //                                                 image: AssetImage("mask-photo-1.png"),
                          //                                                 fit: BoxFit.fill,
                          //                                             ),
                          //                                             shape: RoundedRectangleBorder(
                          //                                                 borderRadius: BorderRadius.circular(15),
                          //                                             ),
                          //                                         ),
                          //                                     ),
                          //                                 ),
                          //                             ],
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 96,
                          //                     top: 170,
                          //                     child: Container(
                          //                         width: 20,
                          //                         height: 20,
                          //                         child: Stack(
                          //                           children: [
                          //                             Image.asset(
                          //                               'mask-photo-like.png', 
                          //                               width: 20,
                          //                               height: 20, 
                          //                             ),
                          //                         ]),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 70,
                          //                     top: 160,
                          //                     child: Opacity(
                          //                         opacity: 0.50,
                          //                         child: Container(
                          //                             width: 1,
                          //                             height: 40,
                          //                             decoration: BoxDecoration(color: Colors.white),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 24,
                          //                     top: 170,
                          //                     child: Container(
                          //                         width: 20,
                          //                         height: 20,
                          //                         child: Stack(
                          //                           children: [
                          //                             Image.asset(
                          //                               'mask-photo-close-small.png', 
                          //                               width: 20,
                          //                               height: 20, 
                          //                             ),
                          //                         ]),
                          //                     ),
                          //                 ),
                          //             ],
                          //         ),
                          //     ),
                          // ),
                          // Positioned(
                          //     left: 40,
                          //     top: 445,
                          //     child: Container(
                          //         width: 140,
                          //         height: 200,
                          //         child: Stack(
                          //             children: [
                          //                 Positioned(
                          //                     left: 0,
                          //                     top: 0,
                          //                     child: Container(
                          //                         width: 140,
                          //                         height: 200,
                          //                         decoration: ShapeDecoration(
                          //                             image: DecorationImage(
                          //                                 image: AssetImage("photo-matches-3.png"),
                          //                                 fit: BoxFit.fill,
                          //                             ),
                          //                             shape: RoundedRectangleBorder(
                          //                                 borderRadius: BorderRadius.circular(15),
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 16,
                          //                     top: 132,
                          //                     child: SizedBox(
                          //                         width: 108,
                          //                         child: Text(
                          //                             'Reagan, 24',
                          //                             style: TextStyle(
                          //                                 color: Colors.white,
                          //                                 fontSize: 16,
                          //                                 fontFamily: 'Poppins',
                          //                                 fontWeight: FontWeight.w700,
                          //                                 height: 0.09,
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 0,
                          //                     top: 160,
                          //                     child: Container(
                          //                         width: 140,
                          //                         height: 40,
                          //                         decoration: ShapeDecoration(
                          //                             color: Colors.black,
                          //                             shape: RoundedRectangleBorder(
                          //                                 borderRadius: BorderRadius.only(
                          //                                     bottomLeft: Radius.circular(15),
                          //                                     bottomRight: Radius.circular(15),
                          //                                 ),
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 0,
                          //                     top: 160,
                          //                     child: Container(
                          //                         width: 140,
                          //                         height: 40,
                          //                         child: Stack(
                          //                             children: [
                          //                                 Positioned(
                          //                                     left: 0,
                          //                                     top: 0,
                          //                                     child: Container(
                          //                                         width: 140,
                          //                                         height: 40,
                          //                                         decoration: ShapeDecoration(
                          //                                             color: Colors.black,
                          //                                             shape: RoundedRectangleBorder(
                          //                                                 borderRadius: BorderRadius.only(
                          //                                                     bottomLeft: Radius.circular(15),
                          //                                                     bottomRight: Radius.circular(15),
                          //                                                 ),
                          //                                             ),
                          //                                         ),
                          //                                     ),
                          //                                 ),
                          //                                 Positioned(
                          //                                     left: 0,
                          //                                     top: -160,
                          //                                     child: Container(
                          //                                         width: 140,
                          //                                         height: 200,
                          //                                         decoration: ShapeDecoration(
                          //                                             image: DecorationImage(
                          //                                                 image: AssetImage("mask-photo-3.png"),
                          //                                                 fit: BoxFit.fill,
                          //                                             ),
                          //                                             shape: RoundedRectangleBorder(
                          //                                                 borderRadius: BorderRadius.circular(15),
                          //                                             ),
                          //                                         ),
                          //                                     ),
                          //                                 ),
                          //                             ],
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 96,
                          //                     top: 170,
                          //                     child: Container(
                          //                         width: 20,
                          //                         height: 20,
                          //                         child: Stack(children: [
                          //                           Image.asset(
                          //                               'mask-photo-like.png', 
                          //                               width: 20,
                          //                               height: 20, 
                          //                             ), 
                          //                         ]),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 70,
                          //                     top: 160,
                          //                     child: Opacity(
                          //                         opacity: 0.50,
                          //                         child: Container(
                          //                             width: 1,
                          //                             height: 40,
                          //                             decoration: BoxDecoration(color: Colors.white),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 24,
                          //                     top: 170,
                          //                     child: Container(
                          //                         width: 20,
                          //                         height: 20,
                          //                         child: Stack(children: [
                          //                           Image.asset(
                          //                               'mask-photo-close-small.png', 
                          //                               width: 20,
                          //                               height: 20, 
                          //                             ),
                          //                         ]),
                          //                     ),
                          //                 ),
                          //             ],
                          //         ),
                          //     ),
                          // ),
                          // Positioned(
                          //     left: 40,
                          //     top: 689,
                          //     child: Container(
                          //         width: 140,
                          //         height: 200,
                          //         child: Stack(
                          //             children: [
                          //                 Positioned(
                          //                     left: 0,
                          //                     top: 0,
                          //                     child: Container(
                          //                         width: 140,
                          //                         height: 200,
                          //                         decoration: ShapeDecoration(
                          //                             image: DecorationImage(
                          //                                 image: AssetImage("photo-matches-5.png"),
                          //                                 fit: BoxFit.fill,
                          //                             ),
                          //                             shape: RoundedRectangleBorder(
                          //                                 borderRadius: BorderRadius.circular(15),
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 16,
                          //                     top: 132,
                          //                     child: SizedBox(
                          //                         width: 108,
                          //                         child: Text(
                          //                             'Kyle, 24',
                          //                             style: TextStyle(
                          //                                 color: Colors.white,
                          //                                 fontSize: 16,
                          //                                 fontFamily: 'Poppins',
                          //                                 fontWeight: FontWeight.w700,
                          //                                 height: 0.09,
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 0,
                          //                     top: 160,
                          //                     child: Container(
                          //                         width: 140,
                          //                         height: 40,
                          //                         decoration: ShapeDecoration(
                          //                             color: Colors.black,
                          //                             shape: RoundedRectangleBorder(
                          //                                 borderRadius: BorderRadius.only(
                          //                                     bottomLeft: Radius.circular(15),
                          //                                     bottomRight: Radius.circular(15),
                          //                                 ),
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 0,
                          //                     top: 160,
                          //                     child: Container(
                          //                         width: 140,
                          //                         height: 40,
                          //                         child: Stack(
                          //                             children: [
                          //                                 Positioned(
                          //                                     left: 0,
                          //                                     top: 0,
                          //                                     child: Container(
                          //                                         width: 140,
                          //                                         height: 40,
                          //                                         decoration: ShapeDecoration(
                          //                                             color: Colors.black,
                          //                                             shape: RoundedRectangleBorder(
                          //                                                 borderRadius: BorderRadius.only(
                          //                                                     bottomLeft: Radius.circular(15),
                          //                                                     bottomRight: Radius.circular(15),
                          //                                                 ),
                          //                                             ),
                          //                                         ),
                          //                                     ),
                          //                                 ),
                          //                                 Positioned(
                          //                                     left: 0,
                          //                                     top: -160,
                          //                                     child: Container(
                          //                                         width: 140,
                          //                                         height: 200,
                          //                                         decoration: ShapeDecoration(
                          //                                             image: DecorationImage(
                          //                                                 image: NetworkImage("https://via.placeholder.com/140x200"),
                          //                                                 fit: BoxFit.fill,
                          //                                             ),
                          //                                             shape: RoundedRectangleBorder(
                          //                                                 borderRadius: BorderRadius.circular(15),
                          //                                             ),
                          //                                         ),
                          //                                     ),
                          //                                 ),
                          //                             ],
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 96,
                          //                     top: 170,
                          //                     child: Container(
                          //                         width: 20,
                          //                         height: 20,
                          //                         child: Stack(children: [
                                                  
                          //                         ]),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 70,
                          //                     top: 160,
                          //                     child: Opacity(
                          //                         opacity: 0.50,
                          //                         child: Container(
                          //                             width: 1,
                          //                             height: 40,
                          //                             decoration: BoxDecoration(color: Colors.white),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 24,
                          //                     top: 170,
                          //                     child: Container(
                          //                         width: 20,
                          //                         height: 20,
                          //                         child: Stack(children: [
                                                  
                          //                         ]),
                          //                     ),
                          //                 ),
                          //             ],
                          //         ),
                          //     ),
                          // ),
                          // Positioned(
                          //     left: 195,
                          //     top: 689,
                          //     child: Container(
                          //         width: 140,
                          //         height: 200,
                          //         child: Stack(
                          //             children: [
                          //                 Positioned(
                          //                     left: 0,
                          //                     top: 0,
                          //                     child: Container(
                          //                         width: 140,
                          //                         height: 200,
                          //                         decoration: ShapeDecoration(
                          //                             image: DecorationImage(
                          //                                 image: NetworkImage("https://via.placeholder.com/140x200"),
                          //                                 fit: BoxFit.fill,
                          //                             ),
                          //                             shape: RoundedRectangleBorder(
                          //                                 borderRadius: BorderRadius.circular(15),
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 16,
                          //                     top: 132,
                          //                     child: SizedBox(
                          //                         width: 108,
                          //                         child: Text(
                          //                             'Kyle, 24',
                          //                             style: TextStyle(
                          //                                 color: Colors.white,
                          //                                 fontSize: 16,
                          //                                 fontFamily: 'Poppins',
                          //                                 fontWeight: FontWeight.w700,
                          //                                 height: 0.09,
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 0,
                          //                     top: 160,
                          //                     child: Container(
                          //                         width: 140,
                          //                         height: 40,
                          //                         decoration: ShapeDecoration(
                          //                             color: Colors.black,
                          //                             shape: RoundedRectangleBorder(
                          //                                 borderRadius: BorderRadius.only(
                          //                                     bottomLeft: Radius.circular(15),
                          //                                     bottomRight: Radius.circular(15),
                          //                                 ),
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 0,
                          //                     top: 160,
                          //                     child: Container(
                          //                         width: 140,
                          //                         height: 40,
                          //                         child: Stack(
                          //                             children: [
                          //                                 Positioned(
                          //                                     left: 0,
                          //                                     top: 0,
                          //                                     child: Container(
                          //                                         width: 140,
                          //                                         height: 40,
                          //                                         decoration: ShapeDecoration(
                          //                                             color: Colors.black,
                          //                                             shape: RoundedRectangleBorder(
                          //                                                 borderRadius: BorderRadius.only(
                          //                                                     bottomLeft: Radius.circular(15),
                          //                                                     bottomRight: Radius.circular(15),
                          //                                                 ),
                          //                                             ),
                          //                                         ),
                          //                                     ),
                          //                                 ),
                          //                                 Positioned(
                          //                                     left: 0,
                          //                                     top: -160,
                          //                                     child: Container(
                          //                                         width: 140,
                          //                                         height: 200,
                          //                                         decoration: ShapeDecoration(
                          //                                             image: DecorationImage(
                          //                                                 image: NetworkImage("https://via.placeholder.com/140x200"),
                          //                                                 fit: BoxFit.fill,
                          //                                             ),
                          //                                             shape: RoundedRectangleBorder(
                          //                                                 borderRadius: BorderRadius.circular(15),
                          //                                             ),
                          //                                         ),
                          //                                     ),
                          //                                 ),
                          //                             ],
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 96,
                          //                     top: 170,
                          //                     child: Container(
                          //                         width: 20,
                          //                         height: 20,
                          //                         child: Stack(children: [
                                                  
                          //                         ]),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 70,
                          //                     top: 160,
                          //                     child: Opacity(
                          //                         opacity: 0.50,
                          //                         child: Container(
                          //                             width: 1,
                          //                             height: 40,
                          //                             decoration: BoxDecoration(color: Colors.white),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 24,
                          //                     top: 170,
                          //                     child: Container(
                          //                         width: 20,
                          //                         height: 20,
                          //                         child: Stack(children: [
                          //                                                           ]),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 95.95,
                          //                     top: 5,
                          //                     child: Transform(
                          //                         transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.17),
                          //                         child: Container(
                          //                             width: 40,
                          //                             height: 40,
                          //                             child: Stack(
                          //                                 children: [
                          //                                     Positioned(
                          //                                         left: 0,
                          //                                         top: 0,
                          //                                         child: Transform(
                          //                                             transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.17),
                          //                                             child: Container(
                          //                                                 width: 40,
                          //                                                 height: 40,
                          //                                                 decoration: ShapeDecoration(
                          //                                                     color: Colors.white,
                          //                                                     shape: OvalBorder(),
                          //                                                     shadows: [
                          //                                                         BoxShadow(
                          //                                                             color: Color(0x11000000),
                          //                                                             blurRadius: 50,
                          //                                                             offset: Offset(0, 20),
                          //                                                             spreadRadius: 0,
                          //                                                         )
                          //                                                     ],
                          //                                                 ),
                          //                                             ),
                          //                                         ),
                          //                                     ),
                          //                                     Positioned(
                          //                                         left: 7.87,
                          //                                         top: 11.23,
                          //                                         child: Transform(
                          //                                             transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.17),
                          //                                             child: Container(
                          //                                                 width: 20.61,
                          //                                                 height: 20.61,
                          //                                                 decoration: BoxDecoration(
                          //                                                     boxShadow: [
                          //                                                         BoxShadow(
                          //                                                             color: Color(0x33E94057),
                          //                                                             blurRadius: 15,
                          //                                                             offset: Offset(0, 10),
                          //                                                             spreadRadius: 0,
                          //                                                         )
                          //                                                     ],
                          //                                                 ),
                          //                                                 child: Stack(children: [
                                                                          
                          //                                                 ]),
                          //                                             ),
                          //                                         ),
                          //                                     ),
                          //                                 ],
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //             ],
                          //         ),
                          //     ),
                          // ),
                          // Positioned(
                          //     left: 195,
                          //     top: 230,
                          //     child: Container(
                          //         width: 140,
                          //         height: 200,
                          //         child: Stack(
                          //             children: [
                          //                 Positioned(
                          //                     left: 0,
                          //                     top: 0,
                          //                     child: Container(
                          //                         width: 140,
                          //                         height: 200,
                          //                         decoration: ShapeDecoration(
                          //                             image: DecorationImage(
                          //                                 image: AssetImage("photo-matches-2.png"),
                          //                                 fit: BoxFit.fill,
                          //                             ),
                          //                             shape: RoundedRectangleBorder(
                          //                                 borderRadius: BorderRadius.circular(15),
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 16,
                          //                     top: 132,
                          //                     child: SizedBox(
                          //                         width: 108,
                          //                         child: Text(
                          //                             'Annabelle, 20',
                          //                             style: TextStyle(
                          //                                 color: Colors.white,
                          //                                 fontSize: 16,
                          //                                 fontFamily: 'Poppins',
                          //                                 fontWeight: FontWeight.w700,
                          //                                 height: 0.09,
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 0,
                          //                     top: 160,
                          //                     child: Container(
                          //                         width: 140,
                          //                         height: 40,
                          //                         decoration: ShapeDecoration(
                          //                             color: Colors.black,
                          //                             shape: RoundedRectangleBorder(
                          //                                 borderRadius: BorderRadius.only(
                          //                                     bottomLeft: Radius.circular(15),
                          //                                     bottomRight: Radius.circular(15),
                          //                                 ),
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 // Positioned(
                          //                 //     left: 0,
                          //                 //     top: 160,
                          //                 //     child: Container(
                          //                 //         width: 140,
                          //                 //         height: 40,
                          //                 //         child: Stack(
                          //                 //             children: [
                          //                 //                 Positioned(
                          //                 //                     left: 0,
                          //                 //                     top: 0,
                          //                 //                     child: Container(
                          //                 //                         width: 140,
                          //                 //                         height: 40,
                          //                 //                         decoration: ShapeDecoration(
                          //                 //                             color: Colors.black,
                          //                 //                             shape: RoundedRectangleBorder(
                          //                 //                                 borderRadius: BorderRadius.only(
                          //                 //                                     bottomLeft: Radius.circular(15),
                          //                 //                                     bottomRight: Radius.circular(15),
                          //                 //                                 ),
                          //                 //                             ),
                          //                 //                         ),
                          //                 //                     ),
                          //                 //                 ),
                          //                 //                 Positioned(
                          //                 //                     left: 0,
                          //                 //                     top: -160,
                          //                 //                     child: Container(
                          //                 //                         width: 140,
                          //                 //                         height: 200,
                          //                 //                         decoration: ShapeDecoration(
                          //                 //                             image: DecorationImage(
                          //                 //                                 image: AssetImage("mask-photo-2.png"),
                          //                 //                                 fit: BoxFit.fill,
                          //                 //                             ),
                          //                 //                             shape: RoundedRectangleBorder(
                          //                 //                                 borderRadius: BorderRadius.circular(15),
                          //                 //                             ),
                          //                 //                         ),
                          //                 //                     ),
                          //                 //                 ),
                          //                 //             ],
                          //                 //         ),
                          //                 //     ),
                          //                 // ),
                          //                 // Positioned(
                          //                 //     left: 96,
                          //                 //     top: 170,
                          //                 //     child: Container(
                          //                 //         width: 20,
                          //                 //         height: 20,
                          //                 //         child: Stack(children: [
                          //                 //         Image.asset(
                          //                 //               'mask-photo-like.png', 
                          //                 //               width: 20,
                          //                 //               height: 20, 
                          //                 //             ),
                          //                 //         ]),
                          //                 //     ),
                          //                 // ),
                          //                 // Positioned(
                          //                 //     left: 70,
                          //                 //     top: 160,
                          //                 //     child: Opacity(
                          //                 //         opacity: 0.50,
                          //                 //         child: Container(
                          //                 //             width: 1,
                          //                 //             height: 40,
                          //                 //             decoration: BoxDecoration(color: Colors.white),
                          //                 //         ),
                          //                 //     ),
                          //                 // ),
                          //                 // Positioned(
                          //                 //     left: 24,
                          //                 //     top: 170,
                          //                 //     child: Container(
                          //                 //         width: 20,
                          //                 //         height: 20,
                          //                 //         child: Stack(children: [
                          //                 //         Image.asset(
                          //                 //               'mask-photo-close-small.png', 
                          //                 //               width: 20,
                          //                 //               height: 20, 
                          //                 //             ),
                          //                 //         ]),
                          //                 //     ),
                          //                 // ),
                          //             ],
                          //         ),
                          //     ),
                          // ),
                          // Positioned(
                          //     left: 195,
                          //     top: 445,
                          //     child: Container(
                          //         width: 140,
                          //         height: 200,
                          //         child: Stack(
                          //             children: [
                          //                 Positioned(
                          //                     left: 0,
                          //                     top: 0,
                          //                     child: Container(
                          //                         width: 140,
                          //                         height: 200,
                          //                         decoration: ShapeDecoration(
                          //                             image: DecorationImage(
                          //                                 image: AssetImage("photo-matches-4.png"),
                          //                                 fit: BoxFit.fill,
                          //                             ),
                          //                             shape: RoundedRectangleBorder(
                          //                                 borderRadius: BorderRadius.circular(15),
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 16,
                          //                     top: 132,
                          //                     child: SizedBox(
                          //                         width: 108,
                          //                         child: Text(
                          //                             'Hadley, 25',
                          //                             style: TextStyle(
                          //                                 color: Colors.white,
                          //                                 fontSize: 16,
                          //                                 fontFamily: 'Poppins',
                          //                                 fontWeight: FontWeight.w700,
                          //                                 height: 0.09,
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 0,
                          //                     top: 160,
                          //                     child: Container(
                          //                         width: 140,
                          //                         height: 40,
                          //                         decoration: ShapeDecoration(
                          //                             color: Colors.black,
                          //                             shape: RoundedRectangleBorder(
                          //                                 borderRadius: BorderRadius.only(
                          //                                     bottomLeft: Radius.circular(15),
                          //                                     bottomRight: Radius.circular(15),
                          //                                 ),
                          //                             ),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 0,
                          //                     top: 160,
                          //                     child: Container(
                          //                         width: 140,
                          //                         height: 40,
                          //                         child: Stack(
                          //                             children: [
                          //                                 Positioned(
                          //                                     left: 0,
                          //                                     top: 0,
                          //                                     child: Container(
                          //                                         width: 140,
                          //                                         height: 40,
                          //                                         decoration: ShapeDecoration(
                          //                                             color: Colors.black,
                          //                                             shape: RoundedRectangleBorder(
                          //                                                 borderRadius: BorderRadius.only(
                          //                                                     bottomLeft: Radius.circular(15),
                          //                                                     bottomRight: Radius.circular(15),
                          //                                                 ),
                          //                                             ),
                          //                                         ),
                          //                                     ),
                          //                                 ),
                          //                                 Positioned(
                          //                                     left: 0,
                          //                                     top: -160,
                          //                                     child: Container(
                          //                                         width: 140,
                          //                                         height: 200,
                          //                                         decoration: ShapeDecoration(
                          //                                             image: DecorationImage(
                          //                                                 image: AssetImage("mask-photo-4.png"),
                          //                                                 fit: BoxFit.fill,
                          //                                             ),
                          //                                             shape: RoundedRectangleBorder(
                          //                                                 borderRadius: BorderRadius.circular(15),
                          //                                             ),
                          //                                         ),
                          //                                     ),
                          //                                 ),
                          //                             ],
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 96,
                          //                     top: 170,
                          //                     child: Container(
                          //                         width: 20,
                          //                         height: 20,
                          //                         child: Stack(children: [
                          //                         Image.asset(
                          //                               'mask-photo-like.png', 
                          //                               width: 20,
                          //                               height: 20, 
                          //                             ),
                          //                         ]),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 70,
                          //                     top: 160,
                          //                     child: Opacity(
                          //                         opacity: 0.50,
                          //                         child: Container(
                          //                             width: 1,
                          //                             height: 40,
                          //                             decoration: BoxDecoration(color: Colors.white),
                          //                         ),
                          //                     ),
                          //                 ),
                          //                 Positioned(
                          //                     left: 24,
                          //                     top: 170,
                          //                     child: Container(
                          //                         width: 20,
                          //                         height: 20,
                          //                         child: Stack(children: [
                          //                         Image.asset(
                          //                               'mask-photo-close-small.png', 
                          //                               width: 20,
                          //                               height: 20, 
                          //                             ),
                          //                         ]),
                          //                     ),
                          //                 ),
                          //             ],
                          //         ),
                          //     ),
                          // ),                        
                        

 //   Container(
                  //     margin: EdgeInsets.only(left: 20, right: 20, top:20),
                  //     width: double.infinity,
                  //     padding: const EdgeInsets.all(5.0),
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       border: Border.all(
                  //         color: Color(0xFFC4C1BD),
                  //         width: 1.0,
                  //       ),
                  //       borderRadius: BorderRadius.circular(30),
                  //       boxShadow: [
                  //         BoxShadow(
                  //           blurRadius: 10,
                  //           spreadRadius: 7,
                  //           offset: Offset(1, 10),
                  //           color: Color(0xFFFFFF),
                  //         ),
                  //       ],
                  //     ),
                  //     child: DropdownButton<CountryLanguage>(
                  //       isExpanded: true,
                  //       underline: SizedBox(),
                  //       icon: Container(
                  //         width: 330,
                  //         height: 30,
                  //         // decoration: BoxDecoration(
                  //         //   color: Colors.white70,
                  //         //   borderRadius: BorderRadius.circular(30),
                  //         //   boxShadow: [
                  //         //     BoxShadow(
                  //         //       blurRadius: 10,
                  //         //       spreadRadius: 7,
                  //         //       offset: Offset(1, 10),
                  //         //       color:
                  //         //           Color.fromARGB(255, 162, 158, 158).withOpacity(0.2),
                  //         //     ),
                  //         //   ],
                  //         // ),
                  //         child: Row(
                  //           children: [
                  //             Row(
                  //               mainAxisAlignment: MainAxisAlignment.start,
                  //               children: [
                  //                 Icon(
                  //                   Icons.language_outlined,
                  //                   color: Colors.black.withOpacity(0.7),
                  //                   size: 22,
                  //                 ),
                  //                 const SizedBox(width: 6),
                  //               ],
                  //             ),
                  //             Text(
                  //               "Select Language", style: TextStyle(
                  //                 fontSize: 15,
                  //                 color: Colors.black.withOpacity(0.7),
                  //               ),
                  //             ),
                  //             Expanded(
                  //               child: Align(
                  //                 alignment:  Alignment.centerRight, 
                  //                 widthFactor: 7.0,
                  //                 child: Icon(
                  //                   Icons.keyboard_arrow_down,
                  //                   color: Colors.black,
                  //                   size: 27,
                  //                 ),
                  //               ),
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //       onChanged: (CountryLanguage? language) {
                  //         _changeLanguage(language!);
                  //       },
                  //       value: selectedLanguage,
                  //         items: dropdownItems
                  //         .map<DropdownMenuItem<CountryLanguage>>((CountryLanguage e) {
                  //       return DropdownMenuItem<CountryLanguage>(
                  //         value: e,
                  //         child: ListTile(
                  //           leading: Image.asset(
                  //             e.flag,
                  //             width: 30,
                  //             height: 20,
                  //           ),
                  //           title: Text(
                  //             IsShowLanguageNameInNativeLanguage
                  //                 ? e.name
                  //                 : e.languageNameInEnglish,
                  //             style: TextStyle(fontSize: 15),
                  //           ),
                  //         ),
                  //       );
                  //     }).toList(),
                  //   ),
                  // ),


                  // List<UserData> dummyUserDataListInSearch = [
//   UserData('Julia','21 / 5km','Nice to meet you',[
//     'https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
//     'https://i.pinimg.com/originals/50/9e/c6/509ec6d95eabe546113967427e70391b.jpg',
//     'https://images.pexels.com/photos/1372134/pexels-photo-1372134.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
//     'https://images.pexels.com/photos/1468379/pexels-photo-1468379.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
//   ],['Shop','Party','Sleep','Travel']),
//   UserData('Lucy','23 / 8km','I wanna meet someone',[
//     'https://images.pexels.com/photos/1539936/pexels-photo-1539936.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
//     'https://images.pexels.com/photos/2797147/pexels-photo-2797147.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
//     'https://images.unsplash.com/photo-1515848797093-effe16ccfabb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fG5lb24lMjBnaXJsfGVufDB8fDB8&ixlib=rb-1.2.1&w=1000&q=80',
//     'https://www.fabmood.com/inspiration/wp-content/uploads/2020/10/blonde-hair-color-13.jpg'
//   ],['Game','Movie','Netflix','Talk']),
//   UserData('Amanda','26 / 12km','Hellllooo',[
//     'https://images.pexels.com/photos/1642228/pexels-photo-1642228.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
//     'https://images.pexels.com/photos/4723520/pexels-photo-4723520.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
//     'https://images.pexels.com/photos/247878/pexels-photo-247878.jpeg?cs=srgb&dl=pexels-pixabay-247878.jpg&fm=jpg'
//   ],['Sports','Watch','Walk','Sleep']),
//   UserData('Helen','22 / 6km','I am boring',[
//     'https://i.pinimg.com/originals/e8/cc/e4/e8cce4252525b456ffe98dc025362ee8.jpg',
//     'https://i.pinimg.com/236x/b8/e7/c8/b8e7c8b9dac88d97e4df0ce67a4704d9--ph.jpg',
//     'https://www.itl.cat/pngfile/big/77-770860_download-wallpaper-chinese-girl-free.jpg',
//   ],['Movie','Sleep','Travel','Party']),
// ];

// List<UserData> dummyUserDataListInLounge(String jsonResponse) {
//   // Check if jsonResponse is not empty
//   if (jsonResponse.isNotEmpty) {
//     try {
//       final Map<String, dynamic> data = jsonDecode(jsonResponse);
//       return [
//         UserData(data['name'], '${data['age']} / ${data['height']}','I haven’t dated much in recent years because I’ve been so focused on my career.',[
//           'https://cdn.pixabay.com/photo/2018/01/13/19/39/fashion-3080644_1280.jpg'
//         ],['Travel','Party','Sleep']),
//       ];
//     } catch (e) {
//       print('Error decoding JSON: $e');
//     }
//   }
//   return [];
// }

  // child: SingleChildScrollView(
            //     child: Container(
            //         child: Column(
            //           children: <Widget>[
            //             Padding(
            //               padding: const EdgeInsets.only(left:40.0, right:40.0, top:44.0),
            //               child: Row(
            //                 children: [
            //                   LayoutBuilder(
            //                       builder: (context, constraints) {
            //                         return FittedBox(
            //                           fit: BoxFit.scaleDown,
            //                           child: Stack(
            //                             children: [
            //                               Container(
            //                                 width: 52,
            //                                 height: 52,
            //                                 decoration: ShapeDecoration(
            //                                   color: Colors.white,
            //                                   shape: RoundedRectangleBorder(
            //                                     side: BorderSide(
            //                                         width: 1, color: Color(0xFFE8E6EA)),
            //                                     borderRadius: BorderRadius.circular(15),
            //                                   ),
            //                                 ),
            //                                 child: Center(
            //                                   // Center the IconButton within the Container
            //                                   child: IconButton(
            //                                     iconSize: 20,
            //                                     icon: const Icon(
            //                                       Icons.arrow_back_ios,
            //                                       color: Color(0xFFFFC700),
            //                                     ),
            //                                     onPressed: () {
            //                                       Navigator.pop(context);
            //                                     },
            //                                   ),
            //                                 ),
            //                               ),
            //                             ],
            //                           ),
            //                         );
            //                       },
            //                     ),
                              
            //                   Spacer(),
            //                   TextButton(
            //                     onPressed: () {},
            //                     child: Text(
            //                       'Skip',
            //                       style: TextStyle(
            //                         color: Color(0xFFFFC700),
            //                         fontSize:
            //                             18, // Adjust the color and font size as needed
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //             SizedBox(
            //               height: 45,
            //             ),
   
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.start, 
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.only(left:40.0),
            //                   child: Text(
            //                     'I am a',
            //                     style: TextStyle(
            //                       color: Colors.black,
            //                       fontSize: 34,
            //                       fontFamily: 'Poppins',
            //                       fontWeight: FontWeight.w700,
            //                       height: 0.04,
            //                     ),
            //                   ),
            //                 ),
            //             ]),
            //             SingleChildScrollView(child:Container(
            //               height: 120, // Set the desired height
            //               margin: EdgeInsets.only(top: 30),
            //               padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            //               decoration: BoxDecoration(
            //                 color: Colors.red,
            //                 borderRadius: BorderRadius.only(
            //                   topLeft: Radius.circular(44),
            //                   topRight: Radius.circular(44),
            //                 ),
            //               ),
            //               child: Column(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: <Widget>[
            //                   Text(
            //                     "We have sent the code verification to +234 **** *** ****",
            //                     style: TextStyle(
            //                       fontSize: 16,
            //                       color: Color(0xFFB40284A),
            //                     ),
            //                   ),
                              
            //                   Stack(
            //                     children: [
            //                           Positioned (
            //                             bottom:10,
            //                             left:20,
            //                             child: CustomPaint(
            //                               // painter:AppBarPainter(),
            //                               size: Size(MediaQuery.of(context).size.width - (2 * 10), 80.0)
            //                             )
            //                           )
            //                     ]
            //                   )
            //                 ],
            //               ),
            //             ))
            //           ]
            //         )
            //       )
            //     )
            

            
// class TermsAndPolicySheet extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     final sheetHeight = screenHeight / 1.15; 

//     return SingleChildScrollView(
//       child: Container(
//       height:sheetHeight,
//         padding: EdgeInsets.all(24),
//         child: ListView(
//         shrinkWrap: true,
//         children: <Widget>[
//           Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                 RichText(
//                   text: TextSpan(
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: "Terms and Policy\n",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 24,
//                         ),
//                       ),
//                       TextSpan(
//                         text: "Last updated is 31 October 2023",
//                         style: TextStyle(
//                           fontSize: 14,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Spacer(), 
//                 Icon(
//                   Icons.info_outlined,
//                   color: Colors.black,
//                 ),
//               ],
//             ),
//             SizedBox(height: 25),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Text(
//                 "What is numerology?",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 "Numerology connects numbers to energy, which appears in the form of qualities and states of being in daily life. As a result, everything in the world has an energy vibration, including numbers. Every number and letter have its own distinct vibration that has an impact on the tale of your life. Therefore, numerology is a metaphysical science that studies the connection between numbers and letters in our personalities and life experiences. Know that your birth date and name was not a coincidence, and they both play an important role in shaping who you are. Numerology exposes the blueprint of every human being's life and is a highly important self-help tool for understanding yourself or who you are, as well as gaining views on your interpersonal dynamics.",
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 "Each number gives you a greater understanding of who you are and how you might improve yourself. It also assists you in determining your life path number, which can be used to describe the map of one's life, personalities, destiny, heart desire, life challenges, past and future, directions, opportunities coming your way, life's blueprint, awareness of strengths and weaknesses, forecasting and planning one's future, and so on.",
//                 style: TextStyle(fontSize: 16),            
//               ),
//               SizedBox(height: 10),
//               Text(
//                 "Numerology 5 core numbers: Life path, birthday, destiny/expression, soul urge/heart desire, personality number.",
//                 style: TextStyle(fontSize: 16),
//               ),
//             ],
//           ),
//             SizedBox(height: 20),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 Text(
//                   "Community Guidelines:",
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   "Be sympathetic, respectful, safe, none judgmental, and real",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   "- No violence or physical harm",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   "- No discriminatory conduct or hate speech",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   "- Be kind on your profile",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   "- Be kind in the messages you send other users",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   "- Do not message/send nudity/sexual content to other users",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   "- No nudity/sexual content allowed",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   "- Do not post copyright and trademark infringement contents",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   "- Do not share your personal information with other users",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   "- Do not post nudity or sexually explicit pictures on your profile",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   "- All your profile images should be focused on you only",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   "- No bullying/harassing of other users, no racist message or imagery",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   "- No promotion/advertising, no spamming, no scamming",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   "- Do not create multiple accounts with different emails",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   "- Email for quotes if you want to advertise on app/website",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   "- You must be 18 years of age or older to use the social/dating part of the app",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   "- Account will be terminated/suspended if continuously violating c-guideline",
//                   style: TextStyle(fontSize: 16),
//                 ),
//               ],
//             ),
//             // Add community guidelines text here
//             SizedBox(height: 20),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 Text(
//                   "REFUND POLICY:",
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   "- No refund on donation, monthly, or yearly subscriptions",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   "- Canceled anytime on monthly or yearly subscriptions on the next payment only",
//                   style: TextStyle(fontSize: 16),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                   style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black26,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   minimumSize: Size(100, 50),
//                 ),
//                   child: Text("Close"),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {                    
//                     Navigator.of(context).pop();
//                   },
//                   style: ElevatedButton.styleFrom(
//                   backgroundColor: Color(0xFFFFC700),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   minimumSize: Size(100, 50),
//                 ),
//                   child: Text("Accept"),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ])),
//     );
//   }
// }


// Container(
            //   padding: EdgeInsets.symmetric( vertical: 30.0,  ),
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Get.to(() => ProfileScreen());
            //       // Get.offNamed(RouteHelper.getProfileScreen());                  
            //       },
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Color(0xFFFFC700),
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //       minimumSize: Size(350, 0),
            //     ),
            //     child: Padding(
            //       padding: EdgeInsets.all(20.0), 
            //       child: Text(
            //         getTranslated(this.context, 'num'),
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 16,
            //           fontFamily: 'Poppins',
            //           fontWeight: FontWeight.w700,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Container(
            //   padding: EdgeInsets.symmetric(vertical: 30.0, ),
            //   child: ElevatedButton(
            //      onPressed: () { 
            //       Get.off(MyHomePage());
            //       },
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Color(0xFFC4C1BD),
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //       minimumSize: Size(350, 0),
            //     ),
            //     child: Padding(
            //       padding: EdgeInsets.all(20.0), 
            //       child: Text(
            //         getTranslated(this.context, 'datesoc'),
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 16,
            //           fontFamily: 'Poppins',
            //           fontWeight: FontWeight.w700,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          