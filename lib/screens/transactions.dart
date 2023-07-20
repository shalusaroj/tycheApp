import 'package:flutter/material.dart';


import 'my_profile.dart';

class Transaction extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  bool _isPasswordVisible = false;
  bool isAvatar1Active = false;
  bool isAvatar2Active = false;
  bool isAvatar3Active = false;
  bool isAvatar4Active = false;

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset("images/Vector 6 (2).png"),
                GestureDetector(
                onTap: () {
                  // Navigate back when the back arrow button is tapped
                 Navigator.pop(context);
                 },
                  child: const Positioned(
                    top: 44,
                    left: 14,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Positioned(
                    top: 35,
                    left: 40,
                    child: Text("\$ 450,102.98",
                      style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)),

                const Positioned(
                    top: 70,
                    left: 40,
                    child: Text("Available Balance",
                      style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),)),
                 Positioned(
                    top: 67,
                    left: 235,
                    child: Container(
                      width: 18,
                        height: 18,
                        child: Image.asset("images/images (1) 1.png",fit: BoxFit.fill,))),


                Positioned(
                  top: 10,
                  left: 230,
                  child: CircleAvatar(
                    radius: 58,
                    backgroundColor: Colors.transparent,
                    child: Stack(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            "images/g1 1.png",
                            fit: BoxFit.cover,
                            width: 60,
                            height: 60,
                          ),
                        ),
                      ],
                    ),
                  ),


                ),
                const Positioned(
                  top: 210,
                  left: 114,
                  child: Text("Recieve",style: TextStyle(fontSize: 12,color: Colors.white),),


                ),
                Positioned(
                  top: 165,
                  left: 22,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    child: ClipOval(
                      child: Image.asset(
                        "images/send 2.png",
                        fit: BoxFit.fill,
                        width: 26,
                        height: 20,
                      ),
                    ),
                  ),


                ),
                const Positioned(
                  top: 210,
                  left: 28,
                  child: Text("Send",style: TextStyle(fontSize: 12,color: Colors.white),),


                ),
                Positioned(
                  top: 165,
                  left: 110,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    child: ClipOval(
                      child: Image.asset(
                        "images/recieve 2.png",
                        fit: BoxFit.fill,
                        width: 26,
                        height: 20,
                      ),
                    ),
                  ),


                ),
                const Positioned(
                  top: 210,
                  left: 208,
                  child: Text("Loan",style: TextStyle(fontSize: 12,color: Colors.white),),


                ),
                Positioned(
                  top: 165,
                  left: 200,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    child: ClipOval(
                      child: Image.asset(
                        "images/loan 2.png",
                        fit: BoxFit.fill,
                        width: 26,
                        height: 20,
                      ),
                    ),
                  ),


                ),
                Positioned(
                  top: 165,
                  left: 287,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    child: ClipOval(
                      child: Image.asset(
                        "images/4641151 2.png",
                        fit: BoxFit.fill,
                        width: 26,
                        height: 20,
                      ),
                    ),
                  ),


                ),
                const Positioned(
                  top: 210,
                  left: 293,
                  child: Text("Topup",style: TextStyle(fontSize: 12,color: Colors.white),),


                ),


              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Recent Transaction",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text("See All",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            const SizedBox(height: 13,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20),
              child: Row(
                children: [
                  Container(
                    width: 32,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Color(0xFFFCAE17),
                      border: Border.all(
                        color: Color(0xFFFCAE17),
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Center(
                        child: Text("All",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Container(
                      width: 78,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color(0xFF0CADC4),
                        border: Border.all(
                          color: Color(0xFF0CADC4),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.only(left: 6.0,right: 4),
                        child: Row(
                          children: const [
                            Icon(Icons.circle,size: 10,color: Colors.grey,),
                            Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Text("Income",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Container(
                      width: 97,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color(0xFF0768AD),
                        border: Border.all(
                          color: Color(0xFF0768AD),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6.0,right: 4),
                        child: Row(
                          children: const [
                            Icon(Icons.circle,size: 10,color: Colors.grey,),
                            Padding(
                              padding: EdgeInsets.only(left: 4.0),
                              child: Text("Experience",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text("Today",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  SizedBox(height: 17,),

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
                            backgroundImage: AssetImage(''),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(top: 9.0),
                                  child: Text(
                                    "Grocery ",
                                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  "Download",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                           Padding(
                            padding: EdgeInsets.only(left: 128.0,top: 9),
                            child: Column(
                              children: const [
                                Text(
                                  "-\$321.00",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFDE1818),
                                  ),
                                ),
                                Text("Aug 26",style: TextStyle(fontSize: 9),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                  const SizedBox(height: 14,),
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
                            backgroundImage: AssetImage(''),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(top: 9.0),
                                  child: Text(
                                    "Transport",
                                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  "Uber",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 128.0,top: 9),
                            child: Column(
                              children: const [
                                Text(
                                  "-\$321.00",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFDE1818),
                                  ),
                                ),
                                Text("Aug 26",style: TextStyle(fontSize: 9),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                  const SizedBox(height: 23,),
                  const Text("Yesterday",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  SizedBox(height: 17,),

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
                              backgroundImage: AssetImage(''),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(top: 9.0),
                                    child: Text(
                                      "Grocery ",
                                      style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    "Download",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 128.0,top: 9),
                              child: Column(
                                children: const [
                                  Text(
                                    "-\$321.00",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFDE1818),
                                    ),
                                  ),
                                  Text("Aug 26",style: TextStyle(fontSize: 9),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    ),
                  ),
                ],
              ),
            )




          ],
        ),
      ),
    );
  }
}