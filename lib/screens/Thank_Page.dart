import 'package:flutter/material.dart';

class ThankPage extends StatefulWidget {
  @override
  _ThankPageState createState() => _ThankPageState();
}

class _ThankPageState extends State<ThankPage> {
  bool _isPasswordVisible = false;

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
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.line,color: Colors.grey,),
            //   label: "",
            // ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 35,),
            Container(
              height: 292,
                width: 428,
                child: Image.asset("images/de 1.png",fit: BoxFit.fill,)),
            Text("   Thank You for\nYour Registration!",style: TextStyle(fontSize: 20),),
             SizedBox(height: 36,),
             Container(
          width: 246,
          height: 33,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
              color:  Color(0xFFFCAE17),
              width: 1.0,
            ),
          ),

          child:Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Image.asset("images/Ellipse 27.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text("Send a Massage",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
              ),
            ],
          ),

        ),
            SizedBox(height: 24,),
            Container(
              width: 246,
              height: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.grey,
              ),

              child:Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Image.asset("images/Ellipse 27.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text("Tell Us with Call",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),

            ),
            SizedBox(height: 48,),
            const Divider(
              color: Colors.grey,  // Customize the color of the divider
              thickness: 1.5,       // Customize the thickness of the divider
              indent: 16,         // Customize the indentation of the divider
              endIndent: 16,      // Customize the end indentation of the divider
            ),
            SizedBox(height: 29,),
            Container(
              width: 246,
              height: 33,
              decoration: BoxDecoration(
                color:  Color(0xFFFF8E01),
                borderRadius: BorderRadius.circular(5), // Adjust the value as per your requirement
                border: Border.all(
                  color: Color(0xFFFF8E01),
                  width: 1,
                ),
              ),
              child: Center(
                  child: Text("Get Started",
                    style: TextStyle(fontSize: 14,color: Colors.white),)),
            ),
            SizedBox(height: 13,),
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n                    Vivamus posuere porta tellus."
                ,style: TextStyle(fontSize: 10),)


          ],
        ),
      ),
    );
  }
}