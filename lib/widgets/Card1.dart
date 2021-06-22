import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  final String boldText;
  final String childText;
  final String moneyText;

  Card1(this.boldText, this.childText, this.moneyText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.teal[20],
        margin: EdgeInsets.all(10),
        elevation: 3,
        child: InkWell(
          autofocus: true,
          focusColor: Colors.teal,
          onTap: () {},
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text(
                  boldText,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(childText),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(250.0, 0.0, 0.0, 20.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "\u0024$moneyText",
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.teal,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
