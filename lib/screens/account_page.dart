

import 'package:flutter/material.dart';


class AccountPage extends StatelessWidget {
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: -15,
        toolbarHeight: 80,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 22, color: Colors.black),
          onPressed: () => _onBackPressed(context), // Pass the context here
        ),

        title: const Text("Account",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
      ),

      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28.0,left: 10,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.black,
                      child: Container(
                        height: 44,
                        width: 44,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage('images/vecteez 1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 18.0,left: 14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  const [
                          Text("My Wallet",
                            style: TextStyle(fontSize: 10,),),
                          Text(
                            "\$ 9,613.90",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 17,),
              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: Row(
                  children: [
                    Text("Balance",style: TextStyle(fontSize: 10),),
                    Icon(Icons.keyboard_arrow_up_outlined,size: 14,),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Text("Discover\nyour\nActivity",
                      style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23.0),
                    child: Stack(
                      children: [
                        Image.asset("images/Group 12.png", fit: BoxFit.fill),
                        const Positioned(
                          top: 110,
                            left: 83,
                            child: Text("4.4k",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                      ],
                    ),
                  ),


                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 23,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFFDB814),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child:Center(child: Text("See More",style: TextStyle(fontSize: 9,fontWeight:FontWeight.bold ),)),
                ),
              ),
              const SizedBox(height: 35,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8),
                child: Column(
                  children: [
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
                    const SizedBox(height: 22,),
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
                    const SizedBox(height: 22,),
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
                    const SizedBox(height: 22,),
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
                    const SizedBox(height: 22,),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<bool> _onBackPressed(BuildContext context) {
    Navigator.pop(context); // This will pop the current route and navigate back
    return Future.value(false);
  }


}







