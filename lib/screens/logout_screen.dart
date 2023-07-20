import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LogoutScreen extends StatefulWidget {
  @override
  _LogoutScreenState createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  Future<void> sendPostRequest() async {
    var url = 'https://example.com/api/endpoint';

    var headers = {'Content-Type': 'application/json'};

    var body = {
      'key1': 'value1',
      'key2': 'value2',
    }; // Replace with your request body

    var response = await http.post(Uri.parse(url), headers: headers, body: json.encode(body));

    if (response.statusCode == 200) {
      // Request successful
      print('API response: ${response.body}');
    } else {
      // Request failed
      print('API request failed with status code ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Color(0xFFFF8E01),
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: const TextStyle(color: Colors.yellow)),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white24,
                size: 29,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white24,
                size: 29,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white24,
                size: 29,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_rounded,
                color: Colors.white24,
                size: 29,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_rounded,
                color: Colors.white24,
                size: 29,
              ),
              label: "",
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: -15,
        toolbarHeight: 80,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 22, color: Colors.black),
          onPressed: _onBackPressed,
        ),
        title: Text(
          "To lorum ipsum",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.send, color: Colors.black, size: 20),
            onPressed: () {
              sendPostRequest();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 43,
            ),
            Center(
              child: CircleAvatar(
                radius: 58,
                backgroundColor: Colors.transparent,
                child: ClipOval(
                  child: Image.asset(
                    "images/g1 1.png",
                    fit: BoxFit.cover,
                    width: 116,
                    height: 116,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            const Text(
              "Lonnie Murphy",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Container(
                height: 270, // Set a fixed height for the container
                child: ListView(
                  children: const [
                    ListTile(
                      leading: Text(
                        'Lorum Ipsum',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'Lorum Ipsum',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'Lorum Ipsum',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'Lorum Ipsum',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'Logout',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 27,
            ),
            Container(
              height: 25,
              width: 25,
              child: Image.asset(
                "images/1345874 1.png",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Text(
                "Delete Account",
                style: TextStyle(fontSize: 18, color: Color(0xFF0768AD)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> _onBackPressed() {
    Navigator.pop(context); // This will pop the current route and navigate back
    return Future.value(false);
  }
}

