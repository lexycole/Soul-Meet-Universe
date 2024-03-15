import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:get/get.dart';
import 'package:soul_meet_num/Screens/auth_screens/forget_password.dart';
import 'package:soul_meet_num/Screens/auth_screens/register_screen.dart';
import 'package:soul_meet_num/Screens/language_screen/language_screen.dart';
import 'package:soul_meet_num/Widgets/snack_bar.dart';
import '../../utils/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute(builder: (context) => const LoginScreen());
  }

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool showSpinner = false;
  bool _obscurePassword = true;


  Future<void> _signIn() async {
    setState(() {
      showSpinner = true;
    });
    try {

    final enteredEmail = _emailController.text;
    print("Current Email (Before Trimming): $enteredEmail");

      await supabase.auth.signInWithPassword(
        email: enteredEmail,
        password: _passwordController.text,
      );

    final trimmedEmail = trimEmailDomain(enteredEmail);

      Navigator.of(context).pushAndRemoveUntil(
        LanguageScreen.route(email: trimmedEmail), 
        (route) => false);
        showSuccessSnackBar('Welcome Back!'); 
    } on AuthException catch (error) {
      context.showErrorSnackBar(message: error.message);
    } catch (_) {
      context.showErrorSnackBar(message: unexpectedErrorMessage);
    }
    if (mounted) {
      setState(() {
        showSpinner = false;
      });
    }
  }


String trimEmailDomain(String email) {
  int atIndex = email.lastIndexOf('@');
  if (atIndex > 0 && atIndex < email.length - 1) {
    return email.substring(0, atIndex);
  }
  return email;
}

    @override
    void dispose() {
      _emailController.dispose();
      _passwordController.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        color: Colors.yellow,
        progressIndicator: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
        ),
        child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0x99FF9800), Colors.white, Color(0x66FFC46D)],
              stops: [-0.5, 0.4, 3.0],
              tileMode: TileMode.repeated,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
              child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/union.png',
                width: 80, 
                height: 80, 
              ),
              SizedBox(height: 25),
              Text("SOUL MEET UNIVERSE", style: TextStyle(fontSize: 20)),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Enter Email",
                    hintText: "e.g. yourmail@mail.com",
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.4000000059604645),
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
              SizedBox(height: 8.0,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    labelText: "Enter Password",
                    hintText: "e.g. Abcde123#@&",
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
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.black.withOpacity(0.6),
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                  cursorColor: Colors.black,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0,
                ),
                child: ElevatedButton(
                  onPressed: showSpinner ? null : _signIn,
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
                      'Login',
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
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.black),
                          ),
                          GestureDetector(
                            onTap: () {            
                              Navigator.of(context).push(RegisterScreen.route());            
                            },
                            child: Text(
                              ' Register', 
                              style: TextStyle(color: Color(0xFFFFC700)),
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () { Get.to(ForgetPasswordScreen()); },
                        child: Text(
                          'Forgot Password?', 
                          style: TextStyle(color: Color(0xFFFFC700)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
