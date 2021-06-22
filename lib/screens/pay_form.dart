import 'package:flutter/material.dart';
import 'package:honeydu_final_app/widgets/Card1.dart';
import 'package:honeydu_final_app/widgets/textfield.dart';
import 'package:toggle_switch/toggle_switch.dart';

class PayPage extends StatefulWidget {
  const PayPage({Key? key}) : super(key: key);

  @override
  _PayPageState createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  //List<bool> _selections = List.generate(1, (_) => true);
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Color(0xff0fb79b),
            ),
            iconSize: 30,
            onPressed: () {},
          ),
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Send or Request Invoice",
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
          ),
          elevation: 1,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      child: Center(
                        child: Text("Start from Scrach or use template here",
                            style: TextStyle(
                                color: Color(0xff0fb79b),
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    IconButton(
                        focusColor: Color(0xff0fb79b),
                        splashColor: Colors.white,
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Color(0xff0fb79b),
                          size: 25,
                        ),
                        onPressed: () {}),
                  ],
                ),
                SizedBox(height: 5),
                Widget2(
                  hintText: "Search for user",
                  titleText: "Recipient",
                  suffixicon: Icon(
                    Icons.circle,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Widget2(
                  hintText: "--/--/----",
                  titleText: "Due Date",
                ),
                SizedBox(
                  height: 3,
                ),
                Widget2(
                  hintText: "--/--/----",
                  titleText: "Pay Early",
                ),
                SizedBox(
                  height: 3,
                ),
                Widget2(
                  hintText: "\u0024 10",
                  titleText: "Pay Early Discount",
                ),
                SizedBox(
                  height: 3,
                ),
                // Widget2(
                //   hintText: "Once",
                //   titleText: "Frequency",
                //   suffixicon: IconButton(
                //       icon: Icon(
                //         Icons.arrow_drop_down,
                //         color: Colors.teal,
                //         size: 25,
                //       ),
                //       onPressed: () {}),
                // ),
                SizedBox(
                  height: 15,
                ),
                // Container(
                //     alignment: Alignment.center,
                //     child: ToggleButtons(
                //       borderRadius: BorderRadius.circular(10),
                //       borderWidth: 2,
                //       fillColor: Colors.teal,
                //       color: Colors.teal,
                //       highlightColor: Colors.teal,
                //       selectedColor: Colors.white,
                //       borderColor: Colors.yellow,
                //       children: <Widget>[
                //         Text("Daily"),
                //         Text("weekly"),
                //         Text("monthly")
                //       ],
                //       isSelected: _selections,
                //       onPressed: (int index) {
                //         setState(() {
                //           _selections[index] = !_selections[index];
                //         });
                //       },
                //     )),
                Row(
                  children: [
                    Text(
                      "Frequency",
                      style: TextStyle(
                          color: Color(0xff0fb79b),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ToggleSwitch(
                  totalSwitches: 1,
                  changeOnTap: true, cornerRadius: 2,
                  minWidth: w * 50,
                  minHeight: 50.0,
                  fontSize: 16.0,
                  initialLabelIndex: 1,
                  activeBgColor: [Color(0xff0fb79b)],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.white,
                  inactiveFgColor: Colors.grey[900],
                  //totalSwitches: 3,
                  labels: ['Daily', 'Weekly', 'Monthly'],
                  onToggle: (index) {},
                ),
                Container(
                  child: Center(
                    child: IconButton(
                        focusColor: Colors.teal,
                        splashColor: Colors.white,
                        icon: Icon(
                          Icons.add,
                          color: Colors.teal,
                          size: 35,
                        ),
                        onPressed: () {}),
                  ),
                ),
                Container(
                    //padding: EdgeInsets.only(right: 200),
                    child: Text(
                  "Add item",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                )),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Container(
                        //  padding: EdgeInsets.only(right: 220),
                        child: Text(
                      "Company Servics",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal),
                    )),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                        child: Text(
                      "Click to add into invoice",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Card1('Napkins', '500 Count Pack', '\u0024200'),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                    child: Text(
                  "Preview",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                )),
                Card1('Napkins', '500 Count Pack', '\u0024400'),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            height: 48,
            width: w * 0.90,
            decoration: BoxDecoration(
              color: Color(0xFF0fb79b),
              borderRadius: BorderRadius.circular(7),
            ),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Text(
                'Export',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
