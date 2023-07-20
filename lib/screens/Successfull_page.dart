import 'package:flutter/material.dart';

class ScuccessfullPage extends StatefulWidget {
  @override
  _ScuccessfullPageState createState() => _ScuccessfullPageState();
}

class _ScuccessfullPageState extends State<ScuccessfullPage> {

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 55,),
            Center(
              child: Image.asset(
                "images/1840744 1.png",
                fit: BoxFit.fill,
                width: 294,
                height: 294,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: Text("Success!",style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold,),),
            ),
            Text("Lorem ipsum amet, consectetur adipiscing elit. ",style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold,),),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(bottom: 58.0),
              child: Center(
                child: Container(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your logic here for the button's action
                    },
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(
                        Color(0xFF0768AD),
                      ),
                    ),
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
    );
  }
}