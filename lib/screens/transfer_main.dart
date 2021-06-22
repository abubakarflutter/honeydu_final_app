//import 'dart:html';

import 'package:flutter/material.dart';

class TransferMain extends StatefulWidget {
  const TransferMain({Key? key}) : super(key: key);

  @override
  _TransferMainState createState() => _TransferMainState();
}

class _TransferMainState extends State<TransferMain> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          bottomOpacity: 10,
          excludeHeaderSemantics: false,
          brightness: Brightness.dark,
          toolbarHeight: 70,
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 32.0),
              child: Text("Cancel",
                  style: TextStyle(
                      color: Color(0xff0fb79b),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal)),
            ),
            onTap: () {},
          ),
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              "Transfer Funds",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          elevation: 1,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("\u0024"),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Text("0.00",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                child: GridView.count(
                  //padding: EdgeInsets.only(left: 5, right: 5, bottom: 120),
                  crossAxisCount: 2,
                  children: <Widget>[
                    Card(
                      shape: selected
                          ? new RoundedRectangleBorder(
                              side: new BorderSide(
                                  color: Color(0xFF0fb79b), width: 2.0),
                              borderRadius: BorderRadius.circular(10.0))
                          : new RoundedRectangleBorder(
                              side: new BorderSide(
                                  color: Color(0xFF0fb79b), width: 2.0),
                              borderRadius: BorderRadius.circular(10.0)),
                      elevation: 3,
                      color: Colors.white,
                      child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 50.0, top: 30),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xff0fb79b),
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15)),
                              child: Icon(
                                Icons.bolt,
                                size: 50,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 123.0,
                                  ),
                                  child: Container(
                                    child: Text(
                                      "Instant",
                                      style: TextStyle(
                                          color: Color(0xFF0fb79b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    child: Text(
                                      "No Free",
                                      style: TextStyle(
                                          color: Color(0xFF0fb79b),
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 3,
                      color: Colors.white,
                      child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 50.0, top: 30),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xff0fb79b),
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15)),
                              child: Icon(
                                Icons.account_balance,
                                size: 50,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 123.0, left: 15),
                                  child: Container(
                                    child: Text(
                                      "1-3 Biz days",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Container(
                                      child: Text(
                                        "No Free",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                // color: Colors.yellow,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fee",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                    Text(
                      "\u0024 0.00",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Payment",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                    Container(
                      height: 45,
                      width: w * 0.50,
                      margin: EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: OutlinedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/visa.jpeg'),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Charles Scwab',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 7),
                                  ),
                                  Text('Debit**4033',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 7)),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            height: 48,
            width: w * 0.95,
            decoration: BoxDecoration(
              color: Color(0xFF0fb79b),
              borderRadius: BorderRadius.circular(7),
            ),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '',
                  ),
                  Text(
                    'Pay',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '\u0024 0.00',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
