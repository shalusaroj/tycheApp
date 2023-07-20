import 'package:flutter/material.dart';

class HomeTwo extends StatefulWidget {
  @override
  _HomeTwoState createState() => _HomeTwoState();
}

class _HomeTwoState extends State<HomeTwo> {
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
          textTheme: Theme
              .of(context)
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
          onPressed: _onBackPressed,
        ),
        title: const Text(
          "Home",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Text(
                  "Welcome",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: 31,
                  width: 380,
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0),
                      prefixIcon: Icon(
                        Icons.search, color: Colors.grey, size: 15,),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 12.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        borderSide: BorderSide(color: Color(0xFFFCAE17)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3.0)),
                        borderSide: BorderSide(color: Color(0xFFFCAE17)),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isAvatar1Active = !isAvatar1Active;
                      });
                    },
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: isAvatar1Active
                          ? Color(0xFFFCAE17)
                          : Colors.white,
                      child: ClipOval(
                        child: ColorFiltered(
                          colorFilter: isAvatar1Active ? ColorFilter.mode(
                              Colors.white, BlendMode.srcIn) : ColorFilter.mode(
                              Color(0xFFFCAE17), BlendMode.srcIn),
                          child: Image.asset(
                            "images/free 1.png",
                            fit: BoxFit.fill,
                            width: 26,
                            height: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isAvatar2Active = !isAvatar2Active;
                        });
                      },
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: isAvatar2Active
                            ? Color(0xFFFCAE17)
                            : Colors.white,
                        child: ClipOval(
                          child: ColorFiltered(
                            colorFilter: isAvatar2Active ? ColorFilter.mode(
                                Colors.white, BlendMode.srcIn) : ColorFilter
                                .mode(Color(0xFFFCAE17), BlendMode.srcIn),
                            child: Image.asset(
                              "images/power 1.png",
                              fit: BoxFit.fill,
                              width: 26,
                              height: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isAvatar3Active = !isAvatar3Active;
                        });
                      },
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: isAvatar3Active
                            ? Color(0xFFFCAE17)
                            : Colors.white,
                        child: ClipOval(
                          child: ColorFiltered(
                            colorFilter: isAvatar3Active ? ColorFilter.mode(
                                Colors.white, BlendMode.srcIn) : ColorFilter
                                .mode(Color(0xFFFCAE17), BlendMode.srcIn),
                            child: Image.asset(
                              "images/fre 1.png",
                              fit: BoxFit.fill,
                              width: 26,
                              height: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isAvatar4Active = !isAvatar4Active;
                        });
                      },
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: isAvatar4Active
                            ? Color(0xFFFCAE17)
                            : Colors.white,
                        child: ClipOval(
                          child: ColorFiltered(
                            colorFilter: isAvatar4Active ? ColorFilter.mode(
                                Colors.white, BlendMode.srcIn) : ColorFilter
                                .mode(Color(0xFFFCAE17), BlendMode.srcIn),
                            child: Image.asset(
                              "images/file 1.png",
                              fit: BoxFit.fill,
                              width: 26,
                              height: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 19,),
              Padding(
                padding: const EdgeInsets.only(left: 4.0,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 381,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFFCAE17),
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey,
                              // Set the background color to white
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
                                      style: TextStyle(fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    "+%21.0",
                                    style: TextStyle(fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green),
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
                    const SizedBox(height: 15,),
                    Container(
                      width: 381,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFFCAE17),
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey,
                              // Set the background color to white
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
                                      style: TextStyle(fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    "+%21.0",
                                    style: TextStyle(fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green),
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
                    const SizedBox(height: 15,),
                    Container(
                      width: 381,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFFCAE17),
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey,
                              // Set the background color to white
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
                                      style: TextStyle(fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    "+%21.0",
                                    style: TextStyle(fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green),
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
                    const SizedBox(height: 15,),
                    Container(
                      width: 381,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFFCAE17),
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey,
                              // Set the background color to white
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
                                      style: TextStyle(fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    "+%21.0",
                                    style: TextStyle(fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green),
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
                    const SizedBox(height: 15,),
                    Container(
                      width: 381,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFFCAE17),
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey,
                              // Set the background color to white
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
                                      style: TextStyle(fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    "+%21.0",
                                    style: TextStyle(fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green),
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
                    const SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 38.0),
                      child: Container(
                        width: 381,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFFCAE17),
                          ),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 15),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.grey,
                                // Set the background color to white
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
                                        style: TextStyle(fontSize: 11,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Text(
                                      "+%21.0",
                                      style: TextStyle(fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green),
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
      ),
    );
  }

  Future<bool> _onBackPressed() {
    Navigator.pop(context); // This will pop the current route and navigate back
    return Future.value(false);
  }
}
