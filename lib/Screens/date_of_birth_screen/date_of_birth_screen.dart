import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:soul_meet_num/Screens/profile_details_screen/first_and_last_name_screen.dart';
import 'package:soul_meet_num/Services/localization/language_constants.dart';

class DateOfBirthScreen extends StatefulWidget {
  const DateOfBirthScreen({super.key});

  @override
  State<DateOfBirthScreen> createState() => _DateOfBirthScreenState();
}

class _DateOfBirthScreenState extends State<DateOfBirthScreen> {
  int? selectedValue;
  String? selectedMonth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0x99FF9800), Colors.white, Color(0x66FFC46D)],
              stops: [-0.5, 0.4, 3.0],
              tileMode: TileMode.repeated, 
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 100.0), 
          child: Column(
            children: [
              SizedBox(
                width: 350,
                child: Text(
                  getTranslated(this.context, 'chobir'),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0.04,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                  width: 350,
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: getTranslated(this.context, 'exactdate')),
                        ],
                      ),
                    ),
                  )),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: DropdownButtonFormField<int>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    labelText: getTranslated(this.context, 'day'),
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.4000000059604645), 
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0x99E8E6EA), width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0x99E8E6EA), width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0x99E8E6EA), width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  validator: (value) =>
                      value == null ? getTranslated(this.context, 'anum') : null,
                  dropdownColor: Colors.white,
                  value: selectedValue,
                  onChanged: (int? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  hint: Text(getTranslated(this.context, 'aday')),
                  items: List.generate(31, (index) => index + 1).map((number) {
                    return DropdownMenuItem<int>(
                      value: number,
                      child: Text(number.toString()),
                    );
                  }).toList(),
                ),
              ),
              SizedBox( height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: DropdownButtonFormField<String>(
                  isExpanded: true,                  
                  decoration: InputDecoration(
                    labelText: getTranslated(this.context, 'month'), 
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.4000000059604645), 
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0x99E8E6EA), width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0x99E8E6EA), width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0x99E8E6EA), width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  validator: (value) =>
                      value == null ?  getTranslated(this.context, 'pleaseselectmonth') : null,
                  dropdownColor: Colors.white,
                  value: selectedMonth,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedMonth = newValue;
                    });
                  },
                  hint: Text(getTranslated(this.context, 'selectmonth')),
                  items: [
                    'January',
                    'February',
                    'March',
                    'April',
                    'May',
                    'June',
                    'July',
                    'August',
                    'September',
                    'October',
                    'November',
                    'December',
                  ].map((month) {
                    return DropdownMenuItem<String>(
                      value: month,
                      child: Text(month),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  keyboardType: TextInputType.number, 
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(4), 
                  ],
                  decoration: InputDecoration(
                    labelText: getTranslated(this.context, 'enterayear'),
                    hintText:  getTranslated(this.context, 'year'),
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
                      borderSide:  BorderSide(color: Color(0x99E8E6EA), width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  cursorColor: Colors.black, 
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 30.0, 
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(FirstAndLastNameScreen());
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
                      getTranslated(this.context, 'continue'),
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
    ));
  }
}
