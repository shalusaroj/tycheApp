import 'package:flutter/material.dart';
import 'Login_Page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 80),
          Center(
            child: Container(
              height: 117,
              width: 168,
              child: Image.asset("images/blue@4x 1.png", fit: BoxFit.fill),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.asset("images/Vector 6 (1).png",fit: BoxFit.fill,),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Open the door to new possibilities",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 20),
                      const Text(
                        "Investments-Your Way",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 20),
                      Flexible(
                        child: SizedBox(
                          width: 180,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => LoginPage(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF0768AD),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                            ),
                            child: Text(
                              "Start Trading!",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 27),
                      Flexible(
                        child: AspectRatio(
                          aspectRatio: 384 / 270,
                          child: Image.asset("images/image 1.png", fit: BoxFit.cover),
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
    );
  }
}
