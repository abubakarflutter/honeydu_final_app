import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honeydu_final_app/widgets/textfield.dart';

class Transfer extends StatefulWidget {
  const Transfer({Key? key}) : super(key: key);

  @override
  _TransferState createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          bottomOpacity: 10,
          excludeHeaderSemantics: false,
          brightness: Brightness.dark,
          toolbarHeight: 50,
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 15.0),
              child: Text("Cancel",
                  style: TextStyle(
                      color: Color(0xff0fb79b),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal)),
            ),
            onTap: () {},
          ),
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              "Transfer to Ted's Pizza",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          elevation: 1,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 150.0),
                      child: Widget2(
                        titleText: "Type something like 'Website Design ",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: GestureDetector(
                            child: Text("Add Description",
                                style: TextStyle(
                                    color: Color(0xff0fb79b),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                            onTap: () {},
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            child: Text("Due Date",
                                style: TextStyle(
                                    color: Color(0xff0fb79b),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Container(
                    height: 50,
                    width: w * 0.85,
                    decoration: BoxDecoration(
                      color: Color(0xff0fb79b),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        'Pay',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
