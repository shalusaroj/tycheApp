import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tycheapp_project/screens/Dashboard_Page.dart';

import 'Login_Page.dart';


class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _isPasswordVisible = false;
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _register() async {
    if (_formKey.currentState!.validate()) {
      String fullName = _fullNameController.text;
      String email = _emailController.text;
      String password = _passwordController.text;

      Map<String, dynamic> requestBody = {
        'name': fullName,
        'email': email,
        'password': password,
      };
      print(requestBody);

      try {
        Uri url = Uri.parse('https://tyche.dipanshutech.co.in/api/register');
        http.Response response = await http.post(
          url,
          body: requestBody,
        );

        if (response.statusCode == 201) {
          print('Registration successful');

          // Save user credentials locally (e.g., using SharedPreferences)
          Map<String, dynamic> responseData = json.decode(response.body);

          if (responseData.containsKey('DATA') && responseData['DATA'] != null) {
            String token = responseData['DATA']['token'] ?? '';
            String name = fullName;


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
        } else {
          print('Registration failed with status code: ${response.statusCode}');
          print('Error message: ${response.body}');
        }
      } catch (error) {
        print('Error occurred: $error');
      }
    }
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
                      Padding(
                        padding: const EdgeInsets.only(top: 33.0),
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
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13.0, right: 13),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0768AD),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            const Text(
                              "Full Name",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            SizedBox(
                              width: 380,
                              height: 28,
                              child: TextFormField(
                                controller: _fullNameController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your full name';
                                  }
                                  return null;
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 13.0, right: 13),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    const Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Form(
                      child: SizedBox(
                        width: 380,
                        height: 28,
                        child: TextFormField(
                          controller: _emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
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
                        ),
                      ),
                    ),

                    SizedBox(height: 30),
                    const Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 9),

                    Form(
                      child: SizedBox(
                        width: 380,
                        height: 28,
                        child: TextFormField(
                          controller: _passwordController,
                          obscureText: !_isPasswordVisible,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                          // Add the "required" property here

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
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Container(
                        width: 180,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: _register,
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF0768AD),
                            ),
                          ),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        const Text(
                          "Have an account?",
                          style: TextStyle(fontSize: 12),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) =>  LoginPage()));
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF0768AD),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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

