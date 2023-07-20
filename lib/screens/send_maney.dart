import 'package:flutter/material.dart';

import 'Edit_Profile.dart';

class SendManey extends StatefulWidget {
  @override
  _SendManeyState createState() => _SendManeyState();
}

class _SendManeyState extends State<SendManey> {


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
                    SizedBox(height: 5,),
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus posuere porta tellus. Sed vehicula sagittis mauris, a viverra tellus convallis sagittis. Vestibulum ac ipsum tellus. Maecenas in felis sit amet enim vulputate tincidunt. Duis ",
                    style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12),
                    Container(
                        height: 238,
                        width: 376,
                        child: Image.asset("images/card.png",fit: BoxFit.fill,)),
                    const SizedBox(height: 14),
                    const Padding(
                      padding: EdgeInsets.only(left: 7.0),
                      child: Text("To",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    const SizedBox(height: 11,),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0,right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          const Text("Account Number",
                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                          SizedBox(
                            width: 181,
                            height: 33,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '', // Add the hint text
                                labelText: '',
                                filled: true,
                                fillColor: Color(0xFFF2F1F1),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0), // Add the border radius
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFCAE17),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0), // Add the border radius
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFCAE17), // Customize the focused border color
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0), // Add the border radius
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(height: 6,),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0,right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          const Text("Enter Amount",
                            style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: SizedBox(
                              width: 181,
                              height: 33,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: '', // Add the hint text
                                  labelText: '',
                                  filled: true,
                                  fillColor: Color(0xFFF2F1F1),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0), // Add the border radius
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFCAE17),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0), // Add the border radius
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFCAE17), // Customize the focused border color
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0), // Add the border radius
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(height: 6,),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0,right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          const Text("Password",
                            style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: SizedBox(
                              width: 181,
                              height: 33,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: '', // Add the hint text
                                  labelText: '',
                                  filled: true,
                                  fillColor: Color(0xFFF2F1F1),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0), // Add the border radius
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFCAE17),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0), // Add the border radius
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFCAE17), // Customize the focused border color
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0), // Add the border radius
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
              const SizedBox(height: 18,),
              Center(
                child: Container(
                  width: 181,
                  height: 32,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your logic here for the button's action
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFF0768AD),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    child: Text(
                      'Send Money',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18),
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
                    padding: const EdgeInsets.only(left: 15.0,right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 9.0),
                              child: Text(
                                "Available Balance",
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "\$ 1,701.59",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          height: 27,
                          width: 96,
                          decoration: BoxDecoration(
                            color: Color(0xFF0768AD),
                            border: Border.all(
                              color: Color(0xFFFCAE17),
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          child: const Center(
                            child: Text("Add fund",style:
                            TextStyle(fontWeight: FontWeight.bold
                                ,fontSize: 12,color: Colors.white),),
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