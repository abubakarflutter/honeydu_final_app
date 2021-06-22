import 'dart:ui';

import "package:flutter/material.dart";
import 'package:custom_switch/custom_switch.dart';

class TransferFund extends StatefulWidget {
  const TransferFund({Key? key}) : super(key: key);

  @override
  _TransferFundState createState() => _TransferFundState();
}

class _TransferFundState extends State<TransferFund> {
  bool _enable = false;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        excludeHeaderSemantics: false,
        toolbarHeight: 50,
        centerTitle: true,
        leading: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 20),
            child: Text("Cancel",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff0fb79b),
                  fontWeight: FontWeight.bold,
                )),
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Transfer to Ted's Pizza",
          style: TextStyle(
              color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold),
        ),
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0, left: 10, right: 10),
        child: Column(children: [
          Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    child: Text(
                  "\u00240.00",
                  style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                )),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "INVESTOR CHECKING",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0),
                        ),
                        Text(
                          "CHECKING ****3137",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0),
                        ),
                        Container(
                          child: GestureDetector(
                            child: Text("Change Bank",
                                style: TextStyle(
                                    color: Color(0xff0fb79b),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                            onTap: () {},
                          ),
                        ),
                      ]),
                )
              ]),
          Divider(
            height: 40,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                      focusColor: Colors.white,
                      splashColor: Colors.white,
                      icon: Icon(
                        Icons.refresh,
                        color: Color(0xff0fb79b),
                        size: 25,
                      ),
                      onPressed: () {}),
                  Container(
                    child: Text(
                      "Set Recurring Payment",
                      style: TextStyle(
                          color: Color(0xff0fb79b),
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Request",
                    style: TextStyle(
                        color: Color(0xff0fb79b),
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: CustomSwitch(
                      activeColor: Color(0xff0fb79b),
                      value: _enable,
                      onChanged: (bool val) {
                        setState(() {
                          _enable = val;
                        });
                      },
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 170,
          ),
          Container(
            height: 48,
            width: w * 0.85,
            decoration: BoxDecoration(
              color: Color(0xFF0fb79b),
              borderRadius: BorderRadius.circular(25),
            ),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Text(
                'Add description',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              onPressed: () {},
            ),
          ),
        ]),
      ),
    );
  }
}
