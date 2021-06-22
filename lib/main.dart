// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honeydu_final_app/screens/Dashboard.dart';
import 'package:honeydu_final_app/screens/ViewInvoice.dart';
import 'package:honeydu_final_app/constants.dart';
import 'package:honeydu_final_app/screens/profile.dart';
import 'package:honeydu_final_app/screens/scanner.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // theme: ThemeData(fontFamily: 'AirbndCereal'),
      debugShowCheckedModeBanner: false,

      home: ScannerScreen(),
      routes: {
        '/viewInvoice': (context) => ViewInvoice(),
        '/profileScreen': (context) => ProfileScreen(),
      },
    );
  }
}
