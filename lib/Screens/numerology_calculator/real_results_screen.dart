import 'package:flutter/material.dart';
import 'package:soul_meet_num/Screens/numerology_calculator/real_results_screen.dart';

class ResultScrren extends StatefulWidget {
  final String? firstName;
  final String? lastName;
  final String? middleName;
  final int? selectedDay;
  final int? selectedMonth;
  final String? birthYear;

  const ResultScrren({
    super.key,
    this.firstName,
    this.lastName,
    this.middleName,
    this.birthYear,
    this.selectedDay,
    this.selectedMonth,
  });

  @override
  State<ResultScrren> createState() => _ResultScrrenState();
}

class _ResultScrrenState extends State<ResultScrren> {
  String? lifePathText = '';
  // late List<BasicTile> basicTiles;
  int? yearSum = 0;
  String? lpText;
  String? lastValue = '';

  @override
  void initState() {
    super.initState();
    // Calculate the digit sums
    int daySum = calculateDaySum(widget.selectedDay ?? 0);
    print('Initial Day Sum: $daySum');

    int monthSum = calculateMonthSum(widget.selectedMonth ?? 0);
    print('Initial Month Sum: $monthSum');

    int? parsedBirthYear = int.tryParse(widget.birthYear ?? '');
    int yearSum = calculateDigitSum(widget.birthYear ?? '');
    print('Initial Year Sum: $yearSum');

    int xsum = yearSum;

    // Conditions for daySum
    if ((widget.selectedDay ?? 0) < 10) {
      daySum = widget.selectedDay!;
    } else if (widget.selectedDay == 10) {
      daySum = 1;
    } else if (widget.selectedDay == 20) {
      daySum = 2;
    } else if (widget.selectedDay == 30) {
      daySum = 3;
    } else if (widget.selectedDay == 11 || widget.selectedDay == 22) {
      daySum = widget.selectedDay!;
    } else if ((widget.selectedDay ?? 0) < 10) {
      daySum = xsum;
    }
    print('Final Day Sum: $daySum');

    // Conditions for monthSum
    if ((widget.selectedMonth ?? 0) < 10) {
      monthSum = widget.selectedMonth!;
    } else if (widget.selectedDay == 10) {
      monthSum = 1;
    } else if (widget.selectedMonth == 11) {
      monthSum = 11;
    } else if (widget.selectedMonth == 12) {
      monthSum = 3;
    }
    print('Final Month Sum: $monthSum');

    // Conditions for yearSum
    if (parsedBirthYear != null) {
      if (parsedBirthYear < 10) {
        yearSum = yearSum;
      } else if (parsedBirthYear == 10) {
        yearSum = 1;
      } else if (parsedBirthYear == 11) {
        yearSum = 11;
      } else if (parsedBirthYear == 22) {
        yearSum = 22;
      } else if (parsedBirthYear == 33) {
        yearSum = 33;
      } else if (parsedBirthYear > 10) {
        if (xsum < 10) {
          xsum = xsum;
        } else if (xsum == 10) {
          xsum = 1;
        } else if (xsum == 11 || xsum == 22 || xsum == 33) {
          xsum = xsum;
        } else if (xsum > 10) {
          xsum = xsum;
        }
        yearSum = xsum;
      }
    }
    print('Final Year Sum: $yearSum');

    int totalSum = daySum + monthSum + yearSum;
    print("Total Sum: $totalSum");

    int calculateDigitTotalSum(int value) {
      int sum = 0;
      String valueStr = value.toString();
      for (int i = 0; i < valueStr.length; i++) {
        sum += int.parse(valueStr[i]);
      }
      return sum;
    }

    if (totalSum >= 10 && totalSum < 100) {
      int digitSum = calculateDigitTotalSum(totalSum);
      print("Sum of digits of $totalSum is: $digitSum");
    } else {
      print("Total sum is not a two-digit number.");
    }

    String? lpNum;
    if (totalSum < 10) {
      lpNum = totalSum.toString();
    } else if (totalSum == 10) {
      lpNum = "1";
    } else {
      switch (totalSum) {
        case 11:
          lpNum = "11/2";
          totalSum = 2;
          break;
        case 22:
          lpNum = "22/4";
          totalSum = 4;
          break;
        case 33:
          lpNum = "33/6";
          totalSum = 6;
          break;
        default:
          if (totalSum == 19) {
            lpNum = "19/1";
          } else if (totalSum == 10) {
            lpNum = "10/1";
          } else {
            lpNum = totalSum.toString();
          }
      }
    }

    int lphold = totalSum;
    print("lphold:$lphold");

    int digitSum = calculateDigitTotalSum(totalSum);
    // String lifePathText;
    String lifePathText = "$totalSum/$digitSum";
    print("Life Path Text: $lifePathText");

    String? newPathText;
    newPathText = lifePathText;
    print("New Path Text: $newPathText");

    String? lpText;

    List<String> lifePathComponents = lifePathText.split('/');
    print(lifePathComponents);

    List<String> updatedLifePathComponents = lifePathComponents.map((component) {
      int number = int.tryParse(component) ?? 1;
      return number.toString();
    }).toList();

    if (updatedLifePathComponents.isNotEmpty) {
      int lastIndex = updatedLifePathComponents.length - 1;
      lastValue = updatedLifePathComponents[lastIndex];
      print('The last value in the list is: $lastValue');
    } else {
      print('The list is empty');
    }

    if (lifePathText == '11/2') {
      lpText = "bold-description-label Definition";
    } else if (lifePathText == '22/4') {
      lifePathText = "22/4";
      lpText = "Life Path Number 22/4";
    } else if (lifePathText == '33/6') {
      lpText = "Life Path Number 33/6";
    } else if (lifePathText == '1' ||
        lifePathText == '10/1' ||
        lifePathText == '19/1' ||
        (lastValue != null && lastValue == '1')) {
      lpText = "Unknown Life Path1";
    } else if (lifePathText == '2' ||
        lifePathText == '20/2' ||
        (lastValue != null && lastValue == '2')) {
      lpText = "Unknown Life Path2";
    } else if (lifePathText == '3' ||
        lifePathText == '12/3' ||
        lifePathText == '21/3' ||
        lifePathText == '30/3' ||
        (lastValue != null && lastValue == '3')) {
      lpText = "Unknown Life Path3";
    } else if (lifePathText == '4' ||
        lifePathText == '13/4' ||
        lifePathText == '31/4' ||
        lifePathText == '40/4' ||
        (lastValue != null && lastValue == '4')) {
      lpText = "Unknown Life Path4";
    } else if (lifePathText == '5' ||
        lifePathText == '14/5' ||
        lifePathText == '23/5' ||
        lifePathText == '32/5' ||
        lifePathText == '41/5' ||
        (lastValue != null && lastValue == '5')) {
      lpText = "Unknown Life Path5";
    } else if (lifePathText == '6' ||
        lifePathText == '15/6' ||
        lifePathText == '24/6' ||
        lifePathText == '42/6' ||
        lifePathText == '51/6' ||
        (lastValue != null && lastValue == '6')) {
      lpText = "Unknown Life Path6";
    } else if (lifePathText == '7' ||
        lifePathText == '16/7' ||
        lifePathText == '25/7' ||
        lifePathText == '34/7' ||
        (lastValue != null && lastValue == '7')) {
      lpText = "Unknown Life Path7";
    } else if (lifePathText == '8' ||
        lifePathText == '17/8' ||
        lifePathText == '26/8' ||
        lifePathText == '35/8' ||
        (lastValue != null && lastValue == '8')) {
      lpText = "Unknown Life Path8";
    } else if (lifePathText == '9' ||
        lifePathText == '18/9' ||
        lifePathText == '27/9' ||
        lifePathText == '36/9' ||
        (lastValue != null && lastValue == '7')) {
      lpText = "Unknown Life Path9";
    }
    // basicTiles = buildBasicTiles(lifePathText,yearSum, lastValue);
  }

  // List<BasicTile> buildBasicTiles(String? lifePathText, int? yearSum, String? lastValue) {
  //   return [
  //     BasicTile(
  //       title: 'Life Path Number: $lifePathText',
  //       tiles: [
  //         BasicTile(
  //             title:
  //                 'Definition',
  //             tiles: [
  //               BasicTile(
  //                   title:
  //                       'The Life Path number represents the path you’ll take in this life. It exposes your true self, our life purpose, strengths, weaknesses, abilities, and goals, as well as how you will develop through life. It also gives details about your life mission, the lessons you must learn over your lifetime, and the best career options for you to pursue. It also reveals the tone of your experiences and why things happen the way they do: past, present, and future. Its one of the most crucial of your charts core numbers. Any single digit from 1 to 9, as well as Master Numbers 11, 22, and 33, are life path numbers. To calculate your Life Path number, add the month, day, and year of your birth together and continue until you reach a single digit.'),
  //               BasicTile(title: 'Iran Apple')
  //             ]),
  //         BasicTile(title: 'Life Path Number: $lastValue', tiles: [
  //           BasicTile(title: 'Af: ${calculateDaySum(widget.selectedDay ?? 0)}'),
  //           BasicTile(
  //               title: 'Iran: ${calculateMonthSum(widget.selectedMonth ?? 0)}')
  //         ]),
  //       ],
  //     ),
  //     BasicTile(
  //       title: 'Born Day/ Birthday Number:${lpText ?? "Not available"}',
  //       tiles: [
  //         BasicTile(title: 'Asia', tiles: [
  //           BasicTile(
  //               title:
  //                   'Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan, Afghanistan '),
  //           BasicTile(title: 'Iran')
  //         ]),
  //         BasicTile(title: 'Africa', tiles: [
  //           BasicTile(
  //               title:
  //                   'Nigeria Nigeria Nigeria Nigeria Nigeria Nigeria Nigeria Nigeria Nigeria'),
  //           BasicTile(
  //               title:
  //                   'South Africa South Africa South Africa South Africa South Africa South Africa South Africa South Africa')
  //         ])
  //       ],
  //     )
  //   ];
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              title: Text('Result Screen'),
            ),
            body: SingleChildScrollView(
              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Present Name',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('First Name: ${widget.firstName ?? ''}'),
                        Text('Last Name: ${widget.lastName ?? ''}'),
                      ],
                    ), 
                    SizedBox(height: 20),
                    Text(
                        'Full Name at Birth',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    SizedBox(height: 20),                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('First Name: ${widget.firstName ?? ''}'),
                        Text('Middle Name: ${widget.middleName ?? ''}'),
                        Text('Last Name: ${widget.lastName ?? ''}'),
                      ],
                    ),
                    SizedBox(height: 20),
                    // MyExpansionTile(),
                    Text(
                        'Date of Birth',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Birth Year: ${widget.birthYear ?? ''}'),
                        Text('Day: ${widget.selectedDay?.toString() ?? ''}'),
                        Text('Month: ${widget.selectedMonth ?? ''}'),
                      ],
                    ),
                    // SizedBox(height: 20),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Text('Year Sum: $yearSum'),
                    //     Text('Day Sum: ${calculateDaySum(widget.selectedDay ?? 0)}'),
                    //     Text('Month Sum: ${calculateMonthSum(widget.selectedMonth ?? 0)}'),
                    //   ],
                    // ),
                    SizedBox(height: 20),
                    // buildTable(basicTiles, ),
                  ],
                ),
              ),
            )
          )
        )
      );
    }

//   Widget buildTable(List<BasicTile> tiles, ) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: tiles
//           .map((tile) => buildTile(tile,))
//           .toList(),
//     );
//   }
// }

// Widget buildTile(BasicTile tile, {double leftPadding = 16}) {

//   return ExpansionTile(
//     tilePadding: EdgeInsets.only(left: leftPadding),
//     trailing: SizedBox.shrink(),
//     leading: Icon(Icons.keyboard_arrow_up_outlined),
//     title: Text(tile.title),
//     children: tile.tiles
//         .map((tile) => buildTile(
//               tile,
//               leftPadding: 16 + leftPadding,
//             ))
//         .toList(),
//   );
// }


// class BasicTile {
//   final String title;
//   final List<BasicTile> tiles;

//   BasicTile({
//     required this.title,
//     this.tiles = const [],
//   });
// }
}
// Helper functions
int calculateDigitSum(String value) {
  int sum = 0;
  for (int i = 0; i < value.length; i++) {
    sum += int.parse(value[i]);
  }
  return sum;
}

int calculateDaySum(int selectedDay) {
  if (selectedDay < 10) {
    return selectedDay;
  } else if (selectedDay == 10 || selectedDay == 20 || selectedDay == 30) {
    return selectedDay ~/ 10;
  } else {
    return calculateDigitSum(selectedDay.toString());
  }
}

int calculateMonthSum(int selectedMonth) {
  if (selectedMonth < 10) {
    return selectedMonth;
  } else {
    return calculateDigitSum(selectedMonth.toString());
  }
}

class MyExpansionTile extends StatefulWidget {
  @override
  _MyExpansionTileState createState() => _MyExpansionTileState();
}

class _MyExpansionTileState extends State<MyExpansionTile> {
  bool _isExpanded = false;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Click to Expand'),
          trailing: _isExpanded ? Icon(Icons.expand_less) : Icon(Icons.expand_more),
          onTap: _toggleExpansion,
        ),
        if (_isExpanded)
          Column(
            children: [
              ListTile(
                title: Text('Sub Item 1'),
              ),
              ListTile(
                title: Text('Sub Item 2'),
              ),
              ListTile(
                title: Text('Sub Item 3'),
              ),
            ],
          ),
        if (_isExpanded)
          Column(
            children: [
              ListTile(
                title: Text('Sub Item 4'),
              ),
              ListTile(
                title: Text('Sub Item 5'),
              ),
              ListTile(
                title: Text('Sub Item 6'),
              ),
            ],
          ),
        AnimatedCrossFade(
          duration: Duration(milliseconds: 300),
          firstChild: SizedBox.shrink(),
          secondChild: Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Expanded content goes here.',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          crossFadeState: _isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        ),
      ],
    );
  }
}