import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ResponseDisplayWidget extends StatefulWidget {
  @override
  _ResponseDisplayWidgetState createState() => _ResponseDisplayWidgetState();
}

class _ResponseDisplayWidgetState extends State<ResponseDisplayWidget> {
  String jsonResponse = '';

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final url = 'https://people-generator-api.p.rapidapi.com/api/person';
    final headers = {
      'X-RapidAPI-Key': '6358ce1453msh7b191e846e75cebp11c061jsnfe4f78567285',
      'X-RapidAPI-Host': 'people-generator-api.p.rapidapi.com',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    try {
      final response = await http.get(Uri.parse(url), headers: headers);
      if (response.statusCode == 200) {
        setState(() {
          jsonResponse = response.body;
        });
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
    }
  }


  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> data = jsonDecode(jsonResponse);

    return Scaffold(
      appBar: AppBar(
        title: Text('HTTP Response Display'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildText('Name: ${data["name"]}'),
            _buildText('Age: ${data["age"]}'),
            _buildText('Job: ${data["job"]}'),
            _buildText('Income (USD): ${data["incomeUSD"]}'),
            _buildText('Credit Score: ${data["creditScore"]}'),
            _buildText('CC Number: ${data["ccNumber"]}'),
            _buildText('Married: ${data["married"]}'),
            _buildText('Has Children: ${data["hasChildren"]}'),
            _buildText('Height: ${data["height"]}'),
            _buildText('Weight: ${data["weight"]}'),
            _buildText('Eye Color: ${data["eyeColor"]}'),
            _buildText('Email: ${data["email"]}'),
            _buildText('Gender: ${data["gender"]}'),
            _buildText('Has Degree: ${data["hasDegree"]}'),
            _buildText('Blood Type: ${data["bloodType"]}'),
            _buildText('Username: ${data["username"]}'),
            _buildText('Political Leaning: ${data["politicalLeaning"]}'),
            _buildText('Religion: ${data["religion"]}'),
            _buildText('Street Address: ${data["address"]["streetAddress"]}'),
            _buildText('City: ${data["address"]["city"]}'),
            _buildText('State: ${data["address"]["state"]}'),
            _buildText('Country: ${data["address"]["country"]}'),
            _buildText('ZIP: ${data["address"]["zip"]}'),
            _buildText('Phone Number: ${data["address"]["phoneNumber"]}'),
            _buildText('IP Address: ${data["address"]["ipAddress"]}'),
            _buildText('Country Code: ${data["address"]["countryCode"]}'),
            _buildText('Date of Birth: ${data["doB"]}'),
            _buildText('GPA: ${data["gpa"]}'),
          ],
        ),
      ),
    );
  }

  Widget _buildText(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }
}
