import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Login_Page.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool _isPasswordVisible = false;
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();

  Future<void> _resetPassword() async {
    String password = _passwordController.text.trim();
    String newPassword = _newPasswordController.text.trim();

    // Replace this API endpoint with the actual one
    Uri uri = Uri.parse('https://tyche.dipanshutech.co.in/api/change_password');

    Map<String, dynamic> requestBody = {
      'password': password,
      'newPassword': newPassword,
    };

    try {
      final response = await http.post(uri, body: requestBody);

      if (response.statusCode == 200) {

        Map<String, dynamic> responseData = json.decode(response.body);

        if (responseData.containsKey('message')) {
          String message = responseData['message'];
          if (message.toLowerCase().contains('wrong old password')) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('User not rregistered yet.'),
                backgroundColor: Colors.red,
              ),
            );
          }
        }

        _navigateToLoginPage();
      } else if (response.statusCode == 400) {
        // Password mismatch error
        _showPasswordMismatchDialog();
      } else {
        print('Error: ${response.statusCode}, ${response.body}');
        // Handle other error cases here
      }
    } catch (error) {
      print('Error: $error');

    }
  }

  void _navigateToLoginPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => LoginPage()),
    );
  }

  void _showPasswordMismatchDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Password Mismatch'),
          content: Text('Password and New Password do not match.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 430,
                  height: 285,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFFCAE3F5),
                        Colors.white,
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top: 35.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Navigate back when the back arrow button is tapped
                                Navigator.pop(context);
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  size: 17,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Text("Back"),
                            const SizedBox(
                              height: 85,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Container(
                                height: 117,
                                width: 168,
                                child: Image.asset(
                                  "images/blue@4x 1.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Reset Passward",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0768AD),
                        ),
                      ),
                      SizedBox(height: 33,),
                      Center(child: Text("Enter your email for verification Process Lorem ipsum dolor",style: TextStyle(fontSize: 10),)),
                      Center(child: Text("sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",style: TextStyle(fontSize: 10),)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 26),
            Padding(
              padding: const EdgeInsets.only(left: 13.0, right: 13),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 9),
                  SizedBox(
                    width: 380,
                    height: 28,
                    child: TextField(
                      controller: _passwordController,
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF2F1F1),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none, // Remove the default border
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFCAE17),
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:Color(0xFFFCAE17), // Customize the focused border color
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 17,),
                  const Text(
                    "New Password",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 9),
                  SizedBox(
                    width: 380,
                    height: 28,
                    child: TextField(
                      controller: _newPasswordController,
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF2F1F1),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none, // Remove the default border
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFCAE17),
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:Color(0xFFFCAE17), // Customize the focused border color
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 37),
                  Center(
                    child: Container(
                      width: 180,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: _resetPassword, // Call the _resetPassword function when the button is pressed
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF0768AD)),
                        ),
                        child: GestureDetector(
                          onTap: _navigateToLoginPage,
                          child: Text(
                            'Reset Password',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: 102, // Adjust the height according to your requirements
              width: 80,
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                "images/Group 80.png",
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}