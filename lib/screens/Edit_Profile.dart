import 'package:flutter/material.dart';


import 'my_profile.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool _isPasswordVisible = false;

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
                Image.asset("images/Vector 6 (2).png"),
                const Positioned(
                  top: 58,
                    left: 150,
                    child: Center(
                        child: Text("Edit Profile",style: TextStyle(fontSize: 18,color: Colors.white),))),
                 GestureDetector(
                    onTap: () {
                      // Navigate back when the back arrow button is tapped
                      Navigator.pop(context);
                 },
                  child: const Positioned(
                    top: 108,
                    left: 12,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Positioned(
                  top: 108,
                    left: 27,
                    child: Text("Back",style: TextStyle(color: Colors.white),)),

                Positioned(
                  top: 115,
                  left: 130,
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
                          bottom: -15, // Adjust the positioning as per your preference
                          right: -15, // Adjust the positioning as per your preference
                          child:GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) =>  MyProfile()));
                            },
                            child: Image.asset(
                              "images/3178179 2.png",
                              width: 60, // Adjust the size as per your preference
                              height: 60, // Adjust the size as per your preference
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                ),


              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 10.0,right: 10),
              child: SizedBox(
                width: 380,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'User Name', // Add the hint text
                    labelText: 'User Name',
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
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 10.0,right: 10),
              child:  SizedBox(
                width: 380,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email', // Add the hint text
                    labelText: 'Email',
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
            ),

            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 10.0,right: 10),
              child:  SizedBox(
                width: 380,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password', // Add the hint text
                    labelText: 'Password',
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
            ),

            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 10.0,right: 10),
              child:  SizedBox(
                width: 380,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Phone', // Add the hint text
                    labelText: 'Phone',
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
            ),

            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 10.0,right: 10),
              child: SizedBox(
                width: 380,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Address', // Add the hint text
                    labelText: 'Address',
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
            ),


          ],
        ),
      ),
    );
  }
}