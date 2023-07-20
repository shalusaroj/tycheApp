import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../utils/app_constant.dart';
import '../wigets.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  bool _isPasswordVisible = false;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    sendApiRequest(1); // Call your API request method here
  }

  Future<void> sendApiRequest(int imageId) async {
    final url = Uri.parse(AppConstants.BASE_URL+AppConstants.myProfile);
    final body = {
      'imageId': imageId.toString(),
    };

    final response = await http.post(
      url,
      body: jsonEncode(body),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      print('API request successful');
    } else {
      print('API request failed with status code ${response.statusCode}');
    }
  }

  // void _handleApiRequest() {
  //   final imageId = 123;
  //   sendApiRequest(imageId);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: drawer(context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset("images/Vector 6 (2).png"),
                const Positioned(
                  top: 58,
                  left: 38,
                  child: Center(
                    child: Text(
                      "My Profile",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                Positioned(
                  top: 115,
                  left: 25,
                  child: CircleAvatar(
                    radius: 58,
                    backgroundColor: Colors.transparent,
                    child: Stack(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            "images/g1 1.png",
                            fit: BoxFit.cover,
                            width: 116,
                            height: 116,
                          ),
                        ),
                        Positioned(
                          bottom: -15,
                          right: -15,
                          child: GestureDetector(
                            onTap: () {
                              _scaffoldKey.currentState!.openDrawer();
                            },
                            child: Image.asset(
                              "images/3178179 2.png",
                              width: 60,
                              height: 60,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  top: 145,
                  left: 155,
                  child: Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Positioned(
                  top: 165,
                  left: 155,
                  child: Text(
                    "Lonnie Murphy",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10),
              child: SizedBox(
                width: 380,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'User Name',
                    labelText: 'Label Text',
                    filled: true,
                    fillColor: Color(0xFFF2F1F1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFCAE17),
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFCAE17),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10),
              child: SizedBox(
                width: 380,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    labelText: 'Email',
                    filled: true,
                    fillColor: Color(0xFFF2F1F1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFCAE17),
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFCAE17),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10),
              child: SizedBox(
                width: 380,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    filled: true,
                    fillColor: Color(0xFFF2F1F1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFCAE17),
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFCAE17),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10),
              child: SizedBox(
                width: 380,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Phone',
                    labelText: 'Phone',
                    filled: true,
                    fillColor: Color(0xFFF2F1F1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFCAE17),
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFCAE17),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10),
              child: SizedBox(
                width: 380,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Address',
                    labelText: 'Address',
                    filled: true,
                    fillColor: Color(0xFFF2F1F1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFCAE17),
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFCAE17),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: (){},
              child: Text('Send API Request'),
            ),
          ],
        ),
      ),
    );
  }
}
