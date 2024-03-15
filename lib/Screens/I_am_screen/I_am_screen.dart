import 'package:flutter/material.dart';
import 'package:soul_meet_num/Widgets/IAmRadioListTile/IAmRadioListTileModel.dart';
import 'package:get/get.dart';
import 'package:soul_meet_num/Routes/routes_helpers.dart';


class IAMScreen extends StatefulWidget {
  const IAMScreen({super.key});

  @override
  State<IAMScreen> createState() => _IAMScreenState();
}

class _IAMScreenState extends State<IAMScreen> {
  int selectedUserId = 1; 

  List<RadioListTileModel> radioListTileModel = RadioListTileModel.getUsers();

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
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 44.0),
            child: Row(
              children: [
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
                          ],
                        ));
                  },
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    Get.offNamed(RouteHelper.getDobScreenScreen());
                                     
                    },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Color(0xFFFFC700),
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Text(
                  'I am a',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0.04,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 91, left: 40.0, right: 40.0),
            child: Column(
              children: [
                for (var index = 0; index < radioListTileModel.length; index++)
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                        color:
                            Colors.white, 
                        border: Border.all(
                          width: 0.1,
                          color: Color(0xFFE8E6EA),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListTile(
                        dense: true,
                        title: Text(
                          radioListTileModel[index].title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.5,
                          ),
                        ),
                        leading: Radio(
                          activeColor:
                              Color(0xFFFFC700),
                          value: radioListTileModel[index].userId,
                          groupValue: selectedUserId,
                          onChanged: (int? value) {
                            itemChange(value, index);
                          },
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
          Spacer(),
          Container(
                padding: EdgeInsets.symmetric(
                    vertical: 60.0, 
                    horizontal: 40.0
                    ),
                child: ElevatedButton(
                  onPressed: () {
                  
                    Get.offNamed(RouteHelper.getDobScreenScreen());
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
                      'Continue',
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
        )
      );
  }

  void itemChange(int? value, int index) {
    setState(() {
      selectedUserId = value!;
    });
  }
}
