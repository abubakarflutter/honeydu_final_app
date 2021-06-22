import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ViewInvoice extends StatelessWidget {
  const ViewInvoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
        title: Text(
          'View Invoice',
          style: TextStyle(color: Colors.black, fontSize: 15.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 45.0,
                backgroundImage: AssetImage('images/avatar.jpg')),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Team IFA',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                ),
                SizedBox(width: 3),
                Text(
                  'requests',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(width: 3),
                Text(
                  '\u00242650',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Due: 8/1/2020',
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
            Divider(
              height: 35.0,
              thickness: 1.0,
            ),
            Expanded(
              child: Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 100.0,
                          margin: EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 10, //spread radius
                                blurRadius: 30, // blur radius
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Web Development Services',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Text(
                                      '\u00242500',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Front-End Design/UX Service',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                                Text(
                                  'Qty: 1',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 100.0,
                          margin: EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 10, //spread radius
                                blurRadius: 30, // blur radius
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Web Development Services',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Text(
                                      '\u00242500',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Front-End Design/UX Service',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                                Text(
                                  'Qty: 1',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 100.0,
                          margin: EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 10, //spread radius
                                blurRadius: 30, // blur radius
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Web Development Services',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Text(
                                      '\u00242500',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Front-End Design/UX Service',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                                Text(
                                  'Qty: 1',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 100.0,
                          margin: EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 10, //spread radius
                                blurRadius: 30, // blur radius
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Web Development Services',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Text(
                                      '\u00242500',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Front-End Design/UX Service',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                                Text(
                                  'Qty: 1',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 100.0,
                          margin: EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 10, //spread radius
                                blurRadius: 30, // blur radius
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Web Development Services',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Text(
                                      '\u00242500',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Front-End Design/UX Service',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                                Text(
                                  'Qty: 1',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 35,
                    width: w * 0.95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: OutlinedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/visa.png'),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Charles Scwab',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                              Text('Debit**4033',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10)),
                            ],
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
                  Container(
                    width: w * 0.95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xFF0fb79b),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("  "),
                          Text('        Pay',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              )),
                          Text(
                            '\u00242600',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: w * 0.95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Color(0xFF0fb79b),
                          backgroundColor: Colors.transparent),
                      child: Text(
                        'Decline or Edit',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0, bottom: 2),
                      child: Text(
                        '*editing an invocice requires an approval from invoice creator',
                        style: TextStyle(color: Colors.grey, fontSize: 8.0),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
