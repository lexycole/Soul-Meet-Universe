import 'package:flutter/material.dart';
import 'package:soul_meet_num/Screens/auth_screens/login_screen.dart';
import 'package:soul_meet_num/Widgets/snack_bar.dart';
import '../../utils/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';


class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _newPasswordController = TextEditingController();
  bool showSpinner = false;

  Future<void> updateUserPassword() async {
    setState(() {
      showSpinner = true;
    });
    try {
      await supabase.auth.updateUser(
        UserAttributes(password: _newPasswordController.text),
      );
        Navigator.of(context)
          .pushAndRemoveUntil(LoginScreen.route(), (route) => false);
          showSuccessSnackBar('Password Updated Successfully');
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Container(
                      width: 295,
                      height: 69,
                      child: Stack(
                          children: [                            
                            Positioned(
                              left: 72,
                              top: 20,
                              child: SizedBox(
                                width: 151,
                                child: Text(
                                  'Reset Password',
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
                  SizedBox(height: 25),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: _newPasswordController,
                        decoration: InputDecoration(
                          labelText: "Enter New Password",
                          hintText: "Abcs123@#@",
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
                    Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 20.0,
                        ),
                        child: ElevatedButton(
                          onPressed:  updateUserPassword,
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
                              'Reset Password',
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
              ]
            )
          )
        )
      )
    );
  }
}
