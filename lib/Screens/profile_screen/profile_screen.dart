import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soul_meet_num/Screens/date_of_birth_screen/date_of_birth_screen.dart';
import 'package:soul_meet_num/Screens/profile_details_screen/profile_details_screen.dart';
import 'package:soul_meet_num/Widgets/snack_bar.dart';
import 'package:soul_meet_num/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (context) => const ProfileScreen(),
    );
  }

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _usernameController = TextEditingController();
  final _websiteController = TextEditingController();
  String? _imageUrl;

  @override
  void initState() {
    super.initState();
    _getInitialProfile();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _websiteController.dispose();
    super.dispose();
  }

  Future<void> _getInitialProfile() async {
    final currentUser = supabase.auth.currentUser;
    if (currentUser == null) {
      return;
    }
    

    final userId = currentUser.id;
    final data = await supabase.from('profiles').select().eq('id', userId).single();

     final prefs = await SharedPreferences.getInstance();
      prefs.setString('username', data['username']);
      prefs.setString('imageUrl', data['avatar_url']);

    setState(() {
      _usernameController.text = data['username'];
      _websiteController.text = data['website'];
      _imageUrl = data['avatar_url'];
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
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
  child: SingleChildScrollView(
    padding: const EdgeInsets.all(12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [ ProfileDetailsScreen(
          imageUrl: _imageUrl,
          onUpload: (imageUrl) async {
            setState(() {
              _imageUrl = imageUrl;
            });
            final userId = supabase.auth.currentUser!.id;
            await supabase.from('profiles').update({'avatar_url': imageUrl}).eq('id', userId);
          },
        ),
        SizedBox(height: 12),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: "Username",
              hintText: "e.g. yourusername",
              labelStyle: TextStyle(
                color: Colors.black.withOpacity(0.4),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0x99E8E6EA), width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0x99E8E6EA), width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0x99E8E6EA), width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              fillColor: Colors.white,
              filled: true,
            ),
            cursorColor: Colors.black,
          ),
        ),
        SizedBox(height: 12),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            controller: _websiteController,
            decoration: InputDecoration(
              labelText: "Bio",
              hintText: "e.g. Content creator",
              labelStyle: TextStyle(
                color: Colors.black.withOpacity(0.4),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0x99E8E6EA), width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0x99E8E6EA), width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0x99E8E6EA), width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              fillColor: Colors.white,
              filled: true,
            ),
            cursorColor: Colors.black,
          ),
        ),
        SizedBox(height: 12),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: ElevatedButton(
            onPressed: () async {
              final username = _usernameController.text.trim();
              final website = _websiteController.text.trim();
              final userId = supabase.auth.currentUser!.id;
              await supabase.from('profiles').update({
                'username': username,
                'website': website,
              }).eq('id', userId);
              if (mounted) {
                showSuccessSnackBar('Profile Saved');
              
              }
              Get.to(DateOfBirthScreen());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFFC700),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: Size(350, 0),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Done',
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
      ],
    ),
  ),
),

      ),
    );
  }
}
