import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:soul_meet_num/Screens/auth_screens/login_screen.dart';
import '../../utils/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:soul_meet_num/Widgets/snack_bar.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key, required this.isRegistering}) : super(key:key);

  static Route<void> route({bool isRegistering = false}) {
    return MaterialPageRoute(
      builder: (context) => RegisterScreen(isRegistering: isRegistering),
    );
  }

  final bool isRegistering;

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool showSpinner = false;
  bool _obscurePassword = true; 
  final _formKey = GlobalKey<FormState>();


  Future<void> _signUp() async {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    final email = _emailController.text;
    final password = _passwordController.text;
    final username = _usernameController.text;

    try {
      await supabase.auth.signUp(
          email: email, 
          password: password, 
          data: {'username': username}, 
          emailRedirectTo:"io.supabase.flutterquickstart://login-callback/");
          Navigator.of(context)
          .pushAndRemoveUntil(LoginScreen.route(), (route) => false);
          showSuccessSnackBar('Account Creation Successfully, Click the link sent to your inbox to verify your email to complete sign up');
    } on AuthException catch (error) {
      context.showErrorSnackBar(message: error.message);
    } catch (error) {
      context.showErrorSnackBar(message: unexpectedErrorMessage);
    }
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
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
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
                    child: TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: "Enter First Name",
                        hintText: "e.g. lorem",
                          labelStyle: TextStyle(
                            color: Colors.black.withOpacity(0.4000000059604645)
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
                    SizedBox(height: 8.0),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
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
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: _obscurePassword, 
                        decoration: InputDecoration(
                          labelText: "Enter Password",
                          hintText: "e.g. Abcde1234@#%",
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
                      padding: EdgeInsets.symmetric(
                        vertical: 20.0,
                      ),
                      child: ElevatedButton(
                        onPressed: showSpinner ? null : _signUp,
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
                            'Register',
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
                    SizedBox(
                      height: 8.0,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?",style: TextStyle(color: Colors.black,),),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(LoginScreen.route());
                            },
                            child: Text(
                              ' login',
                              style: TextStyle(color:  Color(0xFFFFC700)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),            
              ),
            ),
          ),
        )
      ),
    );
  }
}

