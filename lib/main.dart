import 'package:flutter/material.dart';
import 'package:tycheapp_project/screens/Cards.dart';
import 'package:tycheapp_project/screens/Dashboard_Page.dart';
import 'package:tycheapp_project/screens/Statistics_page.dart';
import 'package:tycheapp_project/screens/Successfull_page.dart';
import 'package:tycheapp_project/screens/Thank_Page.dart';
import 'package:tycheapp_project/screens/account_page.dart';
import 'package:tycheapp_project/screens/balence_page.dart';
import 'package:tycheapp_project/screens/home_page.dart';
import 'package:tycheapp_project/screens/home_two.dart';
import 'package:tycheapp_project/screens/logout_screen.dart';
import 'package:tycheapp_project/screens/my_wallet.dart';
import 'package:tycheapp_project/screens/send_maney.dart';
import 'package:tycheapp_project/screens/transactions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


