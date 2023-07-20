import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Reset_Password.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool _isPasswordVisible = false;
  TextEditingController _emailController = TextEditingController();

  void _sendPasswordResetRequest(String email) async {
    var apiUrl = Uri.parse('https://tyche.dipanshutech.co.in/api/forget_password');

    var requestBody = {
      'email': email,
    };

    var response = await http.post(apiUrl, body: requestBody);

    if (response.statusCode == 200) {
      // Navigate to the ResetPassword page on success
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => ResetPassword()),
      );
    } else {
      // Handle error here
      print('Error: ${response.statusCode}, ${response.body}');
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
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Forget  Password",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0768AD),
                        ),
                      ),
                      const SizedBox(
                        height: 33,
                      ),
                      const Center(
                        child: Text(
                          "Enter your email for verification Process Lorem ipsum dolor",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      const Center(
                        child: Text(
                          "sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
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
                    "Email",
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
                      controller: _emailController,
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
                            color: Color(0xFFFCAE17), // Customize the focused border color
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 41),
                  Center(
                    child: Container(
                      width: 180,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          String email = _emailController.text.trim(); // Get the entered email from the TextField
                          _sendPasswordResetRequest(email);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xFF0768AD),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            String email = _emailController.text.trim(); // Get the entered email from the TextField
                            _sendPasswordResetRequest(email);
                          },
                          child: const Text(
                            'Continue',
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


