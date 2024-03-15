import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


String _apiKey = "";

 Future<List<String>> fetchWomanPhoto(String _apiKey) async {
  final String apiUrl = "https://api.pexels.com/v1/search?query=woman&per_page=10&page=1";

  try {
    final http.Response response = await http.get(
      Uri.parse(apiUrl),
      headers: {"Authorization": _apiKey},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = jsonDecode(response.body);
      final List<dynamic> photos = jsonData['photos'];
      final List<String> photoUrls = photos.map((photo) => photo['src']['original']).cast<String>().toList();
      print('Fetched woman photos: $photoUrls');
      return photoUrls;
    } else {
      print("Request failed with status: ${response.statusCode}");
      return []; 
    }
  } catch (error) {
    print("Error: $error");
    return [];
  }
}

Future<List<UserData>> dummyUserDataListInLounge() async {
  final String _apiKey = "";
  final List<String> womanPhotoUrls = await fetchWomanPhoto(_apiKey);

  if (womanPhotoUrls.isEmpty) {
    return [];
  }

  try {
    final List<UserData> userDataList = [];
    for (int i = 0; i < womanPhotoUrls.length; i++) {
      final String name = "Woman $i";
      final String imageUrl = womanPhotoUrls[i];
      final String ageAndHeight = "Age / Height"; 
      final List<String> interests = ['Travel', 'Party', 'Sleep'];

      final UserData userData = UserData(name, ageAndHeight, '', [imageUrl], interests);
      userDataList.add(userData);
    }

    return userDataList;
  } catch (error) {
    print("Error creating user data: $error");
    return [];
  }
}



enum ParentClassType{
  Lounge,
  Chat,
  EditProfile,
}

class BottomButtonData{
  IconData iconData;
  Color iconColor;
  BottomButtonData(this.iconData, this.iconColor);
}

class UserData{
  String name;
  String information;
  String intro;
  List<String> userImages;
  List<String> interesting;

  UserData(this.name, this.information, this.intro, this.userImages,
      this.interesting);
}

class Choice {
  const Choice({required this.title, required this.icon});

  final String title;
  final IconData icon;
}

const chat1Image = 'https://images.pexels.com/photos/1308881/pexels-photo-1308881.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';
const chat2Image = 'https://images.pexels.com/photos/1391498/pexels-photo-1391498.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';
const myProfileImage = 'https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';
const myProfileName = 'James';

List<UserData> dummyUserDataListInSearch = [];

Future<void> fetchWomanPhotosAndPopulateUserDataList() async {
  String _apiKey = "";
  String apiUrl = "https://api.pexels.com/v1/search?query=woman&per_page=10&page=1";

  try {
    final http.Response response = await http.get(
      Uri.parse(apiUrl),
      headers: {"Authorization": _apiKey},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = jsonDecode(response.body);
      final List<dynamic> photos = jsonData['photos'];

      dummyUserDataListInSearch.clear(); 

      final nameAgeHeightData = await fetchNameAgeHeight();

      for (dynamic photo in photos) {
        List<String> userImages = [
          photo['src']['original'],
        ];

        UserData userData = UserData(
          'name',
          'age / height', 
          'intro', 
          userImages,
          ['Interests'], 
        );
        dummyUserDataListInSearch.add(userData);
      }
    } else {
      print("Request failed with status: ${response.statusCode}");
    }
  } catch (error) {
    print("Error: $error");
  }
}




Future<String> _getPickupLine() async {
  final url = Uri.parse('https://alien-pickup-line.p.rapidapi.com/alien_pickup_line');
  final headers = {
      'X-RapidAPI-Key': '',
      'X-RapidAPI-Host': 'alien-pickup-line.p.rapidapi.com',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
  };

  final response = await http.get(url, headers: headers);
  if (response.statusCode == 200) {
    final responseData = json.decode(response.body);
    return responseData['pickup_line'];
  } else {
    throw 'Failed to fetch pickup line (${response.statusCode}): ${response.reasonPhrase}';
  }
}

Future<Map<String, dynamic>> fetchNameAgeHeight() async {
  final url = 'https://people-generator-api.p.rapidapi.com/api/person';
  final headers = {
    'X-RapidAPI-Key': '',
    'X-RapidAPI-Host': 'people-generator-api.p.rapidapi.com',
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  try {
    final response = await http.get(Uri.parse(url), headers: headers);
    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      return responseData;
    } else {
      print('Request failed with status: ${response.statusCode}');
      throw 'Failed to fetch name, age, and height (${response.statusCode}): ${response.reasonPhrase}';
    }
  } catch (error) {
    print('Error: $error');
    throw 'Failed to fetch name, age, and height: $error';
  }
}

List<BottomButtonData> bottomIconDataList = [
  BottomButtonData(FontAwesomeIcons.xmark,Colors.redAccent),
  BottomButtonData(FontAwesomeIcons.solidHeart,Colors.green[400]!),
  BottomButtonData(FontAwesomeIcons.solidStar,Colors.blue[400]!)
];