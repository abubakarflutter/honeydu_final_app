// @dart=2.9
import 'package:flutter/material.dart';

class Widget1 extends StatelessWidget {
  final String hintText;
  final String titleText;
  final bool obsecureText;
  Widget suffixicon;
  Widget1({this.hintText, this.titleText, this.obsecureText, this.suffixicon});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Container(
        alignment: Alignment.center,
        height: 80,
        width: w * 0.90,
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
                cursorColor: Colors.blue,
                cursorHeight: 30.0,
                obscureText: obsecureText,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                  suffixIcon: suffixicon,
                  hintText: hintText,
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff0fb79b)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff0fb79b), width: 2.0)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff0fb79b), width: 2.0)),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff0fb79b))),
                ))));
  }
}

class Widget2 extends StatelessWidget {
  final String hintText;
  final String titleText;
  final bool obsecureText;
  Widget suffixicon;
  Widget2({this.hintText, this.titleText, this.obsecureText, this.suffixicon});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Container(
        alignment: Alignment.center,
        height: 43,
        width: w * 0.93,
        child: TextFormField(
            textDirection: TextDirection.rtl,
            cursorColor: Colors.grey,
            cursorHeight: 30.0,
            autofocus: true,
            style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
                fontWeight: FontWeight.normal),
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              suffixIcon: suffixicon,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: hintText,
              hintStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey),
              labelText: titleText,
              labelStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF79869f)),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 2.0),
              ),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.0)),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 10.0)),
            )));
  }
}
