
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class MyWallet extends StatefulWidget {
  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  bool isAvatar1Active = false;
  bool isAvatar2Active = false;
  bool isAvatar3Active = false;
  bool isAvatar4Active = false;

  Future<void> _postDataToApi() async {
    String apiUrl = "https://tyche.dipanshutech.co.in/api/user_wallet_details";
    Map<String, dynamic> requestData = {
      "token": "51|ffsdernfldferfidferrfsm3435ksddfs",
    };

    try {
      Uri apiUri = Uri.parse(apiUrl);
      var response = await http.post(
        apiUri,
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(requestData),
      );

      if (response.statusCode >= 200 && response.statusCode < 300) {
        print("API Response: ${response.body}");
      } else {
        print("API Error: ${response.statusCode}");
        print("Error Response: ${response.body}");
      }
    } catch (e) {
      print("Error: $e");
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
              icon: Icon(Icons.home, color: Colors.white24, size: 29),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white24, size: 29),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined,
                  color: Colors.white24, size: 29),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded,
                  color: Colors.white24, size: 29),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded,
                  color: Colors.white24, size: 29),
              label: "",
            ),
          ],
        ),
      ),
      appBar:  AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: -15,
        toolbarHeight: 80,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 22, color: Colors.black),
          onPressed: () => _onBackPressed(context), // Pass the context here
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "My Wallet",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "Hello Lonnie Murphy",
              style: TextStyle(
                fontSize: 11,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 58,
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: Image.asset(
                "images/g1 1.png",
                fit: BoxFit.cover,
                width: 59,
                height: 59,
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const SizedBox(height: 40,),
             Center(
               child: Container(
                 width: 358,
                 height: 229,
                 child: Stack(
                   children: [
                     Image.asset("images/Rectangle 21.png",fit: BoxFit.fill,),
                     Positioned(
                       top: 25,
                       left: 25,
                       child:Container(
                           width: 41,
                           height: 30,
                           child: Image.asset("images/ATM chip 2.png",fit: BoxFit.fill,)),
                     ),
                     Positioned(
                         top: 25,
                         right: 23,
                         child: Container(
                             width: 113,
                             height: 46,
                             child: Image.asset("images/58482363cef1014c0b5e49c1 1.png",fit: BoxFit.fill,))
                     ),
                     const Positioned(
                         top: 100,
                         left: 25,
                         child: Text("4574  4874  0535  1567",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),)),
                     const Positioned(
                         left: 25,
                         top: 172,
                         child: Text("PETER PAN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                     const Positioned(
                         right: 38,
                         top: 155,
                         child: Text("vaild thru",style: TextStyle(color: Colors.white,fontSize: 12),)),
                     const Positioned(
                         right: 38,
                         top: 172,
                         child: Text("08/20",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),


                   ],),
               ),
             ),
             const SizedBox(height:13 ,),
             const Padding(
               padding: EdgeInsets.only(left:24,right: 20),
               child: Text("Token Watch list",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
             ),
             const SizedBox(height: 12,),
             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left:23,right: 3),
                   child: Container(
                     width: 160,
                     height: 121,
                     decoration: BoxDecoration(
                       border: Border.all(
                         color: Color(0xFFFCAE17),
                       ),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 5.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               CircleAvatar(
                                 radius: 28,
                                 backgroundColor: Colors.transparent,
                                 child: ClipOval(
                                   child: Image.asset(
                                     "images/g1 1.png",
                                     fit: BoxFit.cover,
                                     width: 39,
                                     height: 39,
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 10.0,left: 3),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: const [
                                     Text(
                                       'Dribble',
                                       style: TextStyle(
                                         color: Colors.black,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 11,
                                       ),
                                     ),
                                     Text(
                                       '+%2.64',
                                       style: TextStyle(
                                         color: Colors.green,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 11,
                                       ),
                                     ),
                                   ],
                                 ),
                               ),

                             ],
                           ),
                         ),
                         Padding(
                           padding: EdgeInsets.only(left: 11.0),
                           child: Column(
                             children: const [
                               Text(
                                 'Price Share',
                                 style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 12,
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 11.0),
                           child: RichText(
                             text: const TextSpan(
                               children: [
                                 TextSpan(
                                   text: '\$904.93',
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 11,
                                   ),
                                 ),
                                 TextSpan(
                                   text: ' +%2.64',
                                   style: TextStyle(
                                     color: Colors.green, // Change the color to your desired color
                                     fontWeight: FontWeight.bold,
                                     fontSize: 11,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left:10,),
                   child: Container(
                     width: 160,
                     height: 121,
                     decoration: BoxDecoration(
                       border: Border.all(
                         color: Color(0xFFFCAE17),
                       ),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 5.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               CircleAvatar(
                                 radius: 28,
                                 backgroundColor: Colors.transparent,
                                 child: ClipOval(
                                   child: Image.asset(
                                     "images/g1 1.png",
                                     fit: BoxFit.cover,
                                     width: 39,
                                     height: 39,
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 10.0,left: 3),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: const [
                                     Text(
                                       'Dribble',
                                       style: TextStyle(
                                         color: Colors.black,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 11,
                                       ),
                                     ),
                                     Text(
                                       '+%2.64',
                                       style: TextStyle(
                                         color: Colors.green,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 11,
                                       ),
                                     ),
                                   ],
                                 ),
                               ),

                             ],
                           ),
                         ),
                         Padding(
                           padding: EdgeInsets.only(left: 11.0),
                           child: Column(
                             children: const [
                               Text(
                                 'Price Share',
                                 style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 12,
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 11.0),
                           child: RichText(
                             text: const TextSpan(
                               children: [
                                 TextSpan(
                                   text: '\$904.93',
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 11,
                                   ),
                                 ),
                                 TextSpan(
                                   text: ' +%2.64',
                                   style: TextStyle(
                                     color: Colors.green, // Change the color to your desired color
                                     fontWeight: FontWeight.bold,
                                     fontSize: 11,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
               ],
             ),
             const SizedBox(height: 12,),
              Padding(
               padding: EdgeInsets.only(left: 24.0,right: 20),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Saved Stocks",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                   const SizedBox(height: 16,),
                   Container(
                     width: 381,
                     height: 60,
                     decoration: BoxDecoration(
                       border: Border.all(
                         color: Color(0xFFFCAE17),
                       ),
                       borderRadius: BorderRadius.circular(10),
                     ),
                     child: Padding(
                       padding: const EdgeInsets.only(left: 15.0, right: 15),
                       child: Row(
                         children: [
                           const CircleAvatar(
                             radius: 20,
                             backgroundColor: Colors.grey,  // Set the background color to white
                             backgroundImage: AssetImage('images/g1 1.png'),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 16.0),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: const [
                                 Padding(
                                   padding: EdgeInsets.only(top: 11.0),
                                   child: Text(
                                     "Alibaba",
                                     style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                                   ),
                                 ),
                                 Text(
                                   "+%21.0",
                                   style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.green),
                                 ),
                               ],
                             ),
                           ),
                           const Padding(
                             padding: EdgeInsets.only(left: 138.0),
                             child: Text(
                               "-\$321.00",
                               style: TextStyle(
                                 fontSize: 12,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),

                   ),
                   const SizedBox(height: 13,),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 38.0),
                     child: Container(
                       width: 381,
                       height: 60,
                       decoration: BoxDecoration(
                         border: Border.all(
                           color: Color(0xFFFCAE17),
                         ),
                         borderRadius: BorderRadius.circular(10),
                       ),
                       child: Padding(
                         padding: const EdgeInsets.only(left: 15.0, right: 15),
                         child: Row(
                           children: [
                             const CircleAvatar(
                               radius: 20,
                               backgroundColor: Colors.grey,  // Set the background color to white
                               backgroundImage: AssetImage('images/g1 1.png'),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 16.0),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: const [
                                   Padding(
                                     padding: EdgeInsets.only(top: 11.0),
                                     child: Text(
                                       "Google",
                                       style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                                     ),
                                   ),
                                   Text(
                                     "-%1.80",
                                     style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.red),
                                   ),
                                 ],
                               ),
                             ),
                             const Padding(
                               padding: EdgeInsets.only(left: 138.0),
                               child: Text(
                                 "-\$321.00",
                                 style: TextStyle(
                                   fontSize: 12,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                             ),
                           ],
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



        );
      }
     Future<bool> _onBackPressed(BuildContext context) {
    Navigator.pop(context); // This will pop the current route and navigate back
    return Future.value(false);
  }
     }