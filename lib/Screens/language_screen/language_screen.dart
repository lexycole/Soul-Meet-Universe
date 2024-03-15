import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soul_meet_num/Services/localization/language_constants.dart';
import 'package:soul_meet_num/Widgets/LanguagePicker/languages.dart';
import 'package:soul_meet_num/main.dart';
import 'package:soul_meet_num/Routes/routes_helpers.dart';
import 'package:soul_meet_num/Services/localization/demo_localization.dart';


class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key, this.initialCountryCode, required this.email});
  final String? initialCountryCode;
  final String? email;

  static Route<void> route({String? email = ''}) {
    return MaterialPageRoute<void>(
      builder: (context) => LanguageScreen(email: email)
    );
  }

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}


class _LanguageScreenState extends State<LanguageScreen> {
  String _selectedLanguage = 'Select Language';
  List<CountryLanguage> dropdownItems = CountryLanguage.languageList();
  CountryLanguage? selectedLanguage;

  @override
  void initState() {
    super.initState();
    _initializeSelectedValue();
  }   

  Future<void> _initializeSelectedValue() async {
      Locale locale = await getLocale();
      setState(() {
        selectedLanguage = dropdownItems.firstWhere(
          (language) => language.code == locale.languageCode,
          orElse: () => dropdownItems.first,
        );
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
                padding: EdgeInsets.symmetric(vertical: 250.0),
                child: Column(
                  children: [
                    Text('Welcome ${widget.email}',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                SizedBox(height: 30),
                      Container(
                        width: 350,
                        child: Text('Select Language',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 21,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 0.04,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width:  350,
                      child: Text(
                        'Please select your prefered language',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.699999988079071),
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                        ),
                      ),
                    ),

                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top:20, bottom :20),
                    width: double.infinity,
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xFFC4C1BD),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 10),
                          color: Color(0xFFFFFF),
                        ),
                      ],
                    ),
                    child: DropdownButton<String>(
                        isExpanded: true,
                        underline: SizedBox(),                            
                        value: _selectedLanguage,
                        items: [
                          DropdownMenuItem<String>(
                            value: 'Select Language',
                            child: ListTile(
                                    leading:  Icon(
                                    Icons.language_outlined,
                                      color: Colors.black.withOpacity(0.7),
                                      size: 22,
                                    ),
                                    title: Text('Select Language'),
                                  ),
                          ),
                          ...languagelist.map<DropdownMenuItem<String>>((dynamic language) {
                            return DropdownMenuItem<String>(
                              value: language.code,
                              child: ListTile(
                                    leading: Image.asset(
                                      language.flag,
                                      width: 30,
                                      height: 20,
                                    ),
                                    title: Text(language.name),
                                  ),
                            );
                          }).toList(),
                        ],
                        onChanged: (String? value) {
                          setState(() {
                            _selectedLanguage = value!;
                            _changeLanguage(value);
                          });
                        },
                      ),
                    ),                 
                                  
                    Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top:20, bottom :20),
                      child: ElevatedButton(
                        onPressed: () { 
                          Get.offNamed(RouteHelper.getAreYouHereForScreen());
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
                            'Next',
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
          );
        }

    Future<void> _changeLanguage(String languageCode) async {
    if (languageCode != 'Select Language') {
      print('Changing language to: $languageCode');
      Locale locale = await setLocale(languageCode);
      DemoLocalization.of(context)!.load();
      MyApp.setLocale(context, locale);
    }
  }

}


class Language {
  final String code;
  final String flag;
  final String name;

  Language(this.code, this.flag, this.name);
}

List<Language> languagelist = [
  Language('en', 'assets/us.png', 'English'),
];


