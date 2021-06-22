// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:honeydu_final_app/screens/ViewInvoice.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:honeydu_final_app/constants.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var data = [
    0.0,
    1.0,
    1.5,
    2.0,
    0.0,
    0.0,
    -0.5,
    -1.0,
    -0.5,
    0.0,
    0.0,
    1.0,
    
    1.5,
    2.0,
    0.0,
    0.0,
    -0.5,
    -1.0,
    -0.5,
    0.0,
    0.0,
     1.5,
    2.0,
    0.0,
    0.0,
    -0.5,
    -1.0,
    -0.5,
    0.0,
    0.0
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        drawer: Drawer(
          child: ListView(padding: EdgeInsets.all(0), children: [
            DrawerHeader(
                margin: EdgeInsets.only(right: 40.0),
                child: Center(
                    child: Image.asset(
                  'images/logo.png',
                  width: 100,
                  height: 100,
                ))),
            ListTile(
                leading: Icon(
                  CupertinoIcons.square_list,
                  size: 40,
                ),
                title: Text(
                  "Dashboard",
                  style: TextStyle(fontSize: 20),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.square_grid_2x2,
                  size: 40,
                ),
                title: Text(
                  "Companies",
                  style: TextStyle(fontSize: 20),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.square_arrow_up,
                  size: 40,
                ),
                title: Text(
                  "Pay",
                  style: TextStyle(fontSize: 20),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.square_arrow_down,
                  size: 40,
                ),
                title: Text(
                  "Get Paid",
                  style: TextStyle(fontSize: 20),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.person_3,
                  size: 40,
                ),
                title: Text(
                  "Contacts",
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              height: 300,
              child: Align(
            alignment: Alignment.bottomCenter,
                        child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 15.0,
                        backgroundImage: AssetImage('images/avatar.jpg')),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Charles Scwab',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                        Text('Debit**4033',
                            style: TextStyle(color: Colors.grey, fontSize: 10)),
                      ],
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(CupertinoIcons.search)),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.settings_outlined)),
                  ],
                ),
                Divider(height: 5, thickness: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(CupertinoIcons.square_arrow_left)),
                        Text(
                          'Logout',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        )
                      ],
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            'Swicth Companies',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ))
                  ],
                ),
              ],
            ),
              ),
            )
          ]),
        ),
        key: _scaffoldKey,
        // // appBar: AppBar(
        // //   actions: [
        // //     IconButton(
        // //       icon: Icon(
        // //         Icons.menu,
        // //         color: Colors.black,
        // //       ),
        // //       onPressed: () {
        // //         _scaffoldKey.currentState.openDrawer();
        // //         // do something
        // //       },
        // //     )
        // //   ],
        //   backgroundColor: Colors.white,
        //   elevation: 0.0,
        //   title: Text(
        //     'Dashboard',
        //     style: TextStyle(color: Colors.black, fontSize: 30.0),
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(bottom: 10.0),
                child: Container(
                  margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0, right: 30.0, bottom: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Dashboard',
                              style: boldExtraText,
                            ),
                            GestureDetector(
                              onTap: (){
                                _scaffoldKey.currentState.openDrawer();
                              },
                              child: CircleAvatar(
                                  radius: 12,
                                  backgroundImage: AssetImage('images/avatar.jpg')),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Revenue',
                        style: NormalSmallText,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\u002427,503",
                            style: boldExtraText,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 35.0,
                      ),
                      Sparkline(
                        data: data,
                        lineColor: Color(0xFF00d500),
                      ),
                      SizedBox(
                        height: 35.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '1D',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xFF2ec4b6),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '1W',
                                style: RowTappingText,
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '1M',
                                style: RowTappingText,
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '3M',
                                style: RowTappingText,
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '1Y',
                                style: RowTappingText,
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'ALL',
                                style: RowTappingText,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 40.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 20.0),
                    child: Text(
                      'UPCOMING',
                      style: GoogleFonts.openSans(
                        fontSize: 18.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                  
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  color: Colors.white,
                  height: 300,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: MyListViewBuilder(),
                  ))
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(16.0),
          child: RaisedButton(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            onPressed: () {
              Navigator.pushNamed(context, '/viewInvoice');
            },
            color: Color(0xFF2ec4b6),
            textColor: Colors.white,
            child: Text(
              'Pay or Request',
              style: GoogleFonts.openSans(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
            ),
          ),
        ),
      ),
    );
  }
}

class MyListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              leading: Text(
                '9/12',
                style: GoogleFonts.openSans(
                  fontSize: 20.0
                )
              ),
              trailing: Text(
                "\u0024120",
                style: GoogleFonts.openSans(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green
                )
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Nipkon\'s Fishries",
                  style: GoogleFonts.openSans(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
                )
                ),
              ));
        });
  }
}
