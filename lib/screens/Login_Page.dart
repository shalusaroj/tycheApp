import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tycheapp_project/screens/Dashboard_Page.dart';
import 'package:tycheapp_project/utils/app_constant.dart';
import 'dart:convert';

import 'Forgot_Password.dart';
import 'Signup_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordVisible = false;
  String email = '';
  String password = '';

  void login() async {
    if (isValidEmail(email)) {
      Map<String, String> requestBody = {
        'email': email,
        'password': password,
      };

      var url = Uri.parse(AppConstants.BASE_URL + AppConstants.login);
      var response = await http.post(
        url,
        body: json.encode(requestBody),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        print('Logged in successfully');


        Map<String, dynamic> responseData = json.decode(response.body);

        if (responseData.containsKey('message')) {
          String message = responseData['message'];
          if (message.toLowerCase().contains('unauthorised users')) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('User not rregistered yet.'),
                backgroundColor: Colors.red,
              ),
            );
          }
          else if(message.toLowerCase().contains('wrong password')){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Wrong Password'),
                backgroundColor: Colors.red,
              ),
            );
          }
        }

        if (responseData.containsKey('data') && responseData['data'] != null) {
          String token = responseData['data']['token'] ?? '';
          String name = responseData['data']['name]'] ?? '';


          // Save the login access data in shared preferences
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString('token', token);
          prefs.setString('name', name);

          // Redirect to the next page
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => DashboardPage()), // Replace NextPage with your desired page
          );
        } else {
          print('Invalid response data: Missing or null "data" key.');
        }
      } else if (response.statusCode == 404) {
        // User is not registered, display a message
        print('User not registered, please sign up.');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('ooh some error occured try again later'),
            backgroundColor: Colors.red,
          ),
        );
      } else {
        print('Login failed with status code: ${response.statusCode}');
      }
    } else {
      print('Invalid email');
    }
  }




  bool isValidEmail(String email) {
    final regex = RegExp(
        r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$');
    return regex.hasMatch(email);
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
                  decoration: const BoxDecoration(
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
                      Row(
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
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Login to your account",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0768AD),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 13.0, right: 13),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 380,
                    height: 28,
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          email = value;
                          print(email);
                        });
                      },

                      decoration: const InputDecoration(
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
                      inputFormatters: [
                        FilteringTextInputFormatter.deny(RegExp(r'\s')), // Disallow spaces
                        FilteringTextInputFormatter.singleLineFormatter, // Restrict to a single line
                        // FilteringTextInputFormatter(
                        //   RegExp(r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$'),
                        //   allow: true,
                        //   replacementString: '',
                        // ),
                      ],
                    ),
                  ),


                  const SizedBox(height: 35),
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                   SizedBox(
                    width: 380,
                    height: 28,
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                      decoration: const InputDecoration(
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
                            color: Color(0xFFFCAE17), // Customize the focused border color
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Checkbox(
                        value: _isPasswordVisible,
                        activeColor: _isPasswordVisible ? Colors.green : Colors.red,
                        onChanged: (bool? value) {
                          setState(() {
                            _isPasswordVisible = value!;
                          });
                        },
                      ),
                      const Text(
                        'Remember me',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF0768AD),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 8),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => ForgotPassword()));
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF0768AD),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Container(
                      width: 180,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: login, // Call the login function on button press
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xFF0768AD),
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account?",
                        style: TextStyle(fontSize: 12),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => SignupPage()));
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF0768AD),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Center(
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      " tempor incididunt ut labore et dolore magna aliqua.",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
