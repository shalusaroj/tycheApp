import 'package:flutter/material.dart';

import 'Edit_Profile.dart';

class BalencePage extends StatefulWidget {
  @override
  _BalencePageState createState() => _BalencePageState();
}

class _BalencePageState extends State<BalencePage> {
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
                .copyWith(caption: const TextStyle(color: Colors.yellow))),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.white24,size: 29,),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.white24,size: 29,),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined,color: Colors.white24,size: 29,),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded,color: Colors.white24,size: 29,),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded,color: Colors.white24,size: 29,),
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
        title: const Text(
          "\$ 3,852.53",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        // Adjust the spacing as needed
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left: 12.0,right: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Padding(
                padding: EdgeInsets.only(left: 32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  const [
                    Text("Total Balance",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 17),
                    Container(
                        height: 238,
                        width: 376,
                        child: Image.asset("images/card.png",fit: BoxFit.fill,)),
                  ],
                ),
              ),
              const SizedBox(height: 22,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 58,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Color(0xFFFCAE17),
                      border: Border.all(
                        color: Color(0xFFFCAE17),
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Center(
                        child: Text("Debit",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      width: 58,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color(0xFFFCAE17),
                        border: Border.all(
                          color: Color(0xFFFCAE17),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Center(
                          child: Text("Credit",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),

                    ),
                  ),

                ],
              ),
              SizedBox(height: 24,),

              Padding(
                padding: const EdgeInsets.only(left: 20,),
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
                                  "Shopping Mall",
                                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Grocery Shopping",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 108.0),
                          child: Text(
                            "-\$321.00",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFDE1818),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ),
              ),
              const SizedBox(height: 16,),

              Padding(
                padding: const EdgeInsets.only(left: 20,),
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
                                  "Shopping Mall",
                                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Grocery Shopping",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 108.0),
                          child: Text(
                            "-\$321.00",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFDE1818),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ),
              ),
              const SizedBox(height: 16,),

              Padding(
                padding: const EdgeInsets.only(bottom: 38.0,left: 20,),
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
                                  "Shopping Mall",
                                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Grocery Shopping",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 108.0),
                          child: Text(
                            "-\$321.00",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFDE1818),
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
      ),

    );
  }
  Future<bool> _onBackPressed() {
    Navigator.pop(context); // This will pop the current route and navigate back
    return Future.value(false);
  }
}