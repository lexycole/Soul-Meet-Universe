// import 'package:flutter/material.dart';
// import 'package:soul_meet_num/Widgets/IAmRadioListTile/IAmRadioListTileModel.dart';

// class IAmRadioListTile extends StatefulWidget {
//   const IAmRadioListTile({super.key});

//   @override
//   State<IAmRadioListTile> createState() => _IAmRadioListTileState();
// }

// class _IAmRadioListTileState extends State<IAmRadioListTile> {
//   int selectedUserId = 1; // Store the selected user ID

//   List<RadioListTileModel> radioListTileModel = RadioListTileModel.getUsers();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: radioListTileModel.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Card(
//             child: Container(
//               height: 58, // Set the desired height
//               decoration: BoxDecoration(
//                 color: Colors.white, // Set the background color to white
//                 border: Border.all(
//                   width: 1,
//                   color: Color(0xFFE8E6EA), // Set the border color
//                 ),
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: ListTile(
//                 dense: true,
//                 title: Text(
//                   radioListTileModel[index].title,
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     letterSpacing: 0.5,
//                   ),
//                 ),
//                 leading: Radio(
//                   activeColor:
//                       Color(0xFFFFC700), // Set the selected radio color
//                   value: radioListTileModel[index].userId,
//                   groupValue: selectedUserId,
//                   onChanged: (int? value) {
//                     itemChange(value, index);
//                   },
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   void itemChange(int? value, int index) {
//     setState(() {
//       selectedUserId = value!;
//     });
//   }
// }



// // class _IAmCheckboxListTileState extends State<IAmCheckboxListTile> {
// //   List<CheckBoxListTileModel> checkBoxListTileModel =
// //       CheckBoxListTileModel.getUsers();

// //   @override
// //   Widget build(BuildContext context) {
// //     return ListView.builder(
// //           itemCount: checkBoxListTileModel.length,
// //           itemBuilder: (BuildContext context, int index) {
// //             return Card(
// //               child: Container(
// //                 padding: EdgeInsets.all(10.0),
// //                 child: Column(
// //                   children: <Widget>[
// //                     CheckboxListTile(
// //                         activeColor: Colors.grey[300],
// //                         dense: true,
// //                         title: Text(
// //                           checkBoxListTileModel[index].title,
// //                           style: TextStyle(
// //                               fontSize: 14,
// //                               fontWeight: FontWeight.w600,
// //                               letterSpacing: 0.5),
// //                         ),
// //                         value: checkBoxListTileModel[index].isCheck,
// //                         onChanged: (bool? val) {
// //                           itemChange(val!, index);
// //                         })
// //                   ],
// //                 ),
// //               ),
// //             );
// //           }
// //           );
// //   }

// //   void itemChange(bool val, int index) {
// //     setState(() {
// //       checkBoxListTileModel[index].isCheck = val;
// //     });
// //   }
// // }
