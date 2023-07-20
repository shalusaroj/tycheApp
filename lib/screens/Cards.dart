import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'Edit_Profile.dart';

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  bool isContactlessPaymentEnabled = false;
  bool isOnlinePaymentEnabled = false;
  bool isATMWithdrawalsEnabled = false;
  int _currentPage = 0;
  final PageController _pageController = PageController();
  List<String> cardImages = [
    "images/card.png",
    "images/card.png",
    "images/card.png",
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
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
          "Your Card",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ), // Adjust the spacing as needed
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 12.0, right: 12),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          Padding(
          padding: EdgeInsets.only(left: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "2 Physical Card 1 Virtual Card ",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 103,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color(0xFFFCAE17),
                        border: Border.all(
                          color: Color(0xFFFCAE17),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Center(
                          child: Text("Physical Card",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        width: 103,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Color(0xFFFCAE17),
                          border: Border.all(
                            color: Color(0xFFFCAE17),
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Center(
                            child: Text("Virtual Card",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold))),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 21),
              Container(
                height: 238,
                width: 376,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: cardImages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      cardImages[index],
                      fit: BoxFit.fill,
                    );
                  },
                  onPageChanged: (int index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                ),
              ),
              const SizedBox(height: 11),
              Center(
                child: DotsIndicator(
                  dotsCount: cardImages.length,
                  position: _currentPage.toDouble(),
                  decorator: DotsDecorator(
                    activeColor: Colors.blue,
                    size: const Size.square(6.0),
                    activeSize: const Size(18.0, 6.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Card Settings",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 12,
                    ),
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
                        padding: EdgeInsets.only(left: 7.0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey,
                              backgroundImage: AssetImage(''),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 9.0),
                              child: Text(
                                "Contactless payment",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Switch(
                                  value: isContactlessPaymentEnabled,
                                  activeColor: Colors.green,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      isContactlessPaymentEnabled =
                                          newValue;
                                    });
                                    if (newValue) {
                                      print("Contactless payment enabled");
                                    } else {
                                      print("Contactless payment disabled");
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
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
                        padding: EdgeInsets.only(left: 7.0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey,
                              backgroundImage: AssetImage(''),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 9.0),
                              child: Text(
                                "Online Payment",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Switch(
                                  value: isOnlinePaymentEnabled,
                                  activeColor: Colors.green,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      isOnlinePaymentEnabled = newValue;
                                    });
                                    if (newValue) {
                                      print("Online payment enabled");
                                    } else {
                                      print("Online payment disabled");
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
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
                        padding: EdgeInsets.only(left: 7.0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey,
                              backgroundImage: AssetImage(''),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 9.0),
                              child: Text(
                                "ATM Withdrawals",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Switch(
                                  value: isATMWithdrawalsEnabled,
                                  activeColor: Colors.green,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      isATMWithdrawalsEnabled = newValue;
                                    });
                                    if (newValue) {
                                      print("ATM withdrawals enabled");
                                    } else {
                                      print("ATM withdrawals disabled");
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),

    ),
    ),
    );
  }
  Future<bool> _onBackPressed() {
    Navigator.pop(context); // This will pop the current route and navigate back
    return Future.value(false);
  }
}
