import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:percent_indicator/percent_indicator.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20.0,
                        ),
                        child: FaIcon(
                          FontAwesomeIcons.timesCircle,
                          color: Color(0xFF2ec4b6),
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 18.0,
                            backgroundImage: AssetImage('images/avatar.jpg')),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Ted's Pizza",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                    child: Text(
                      'About',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                  AutoSizeText(
                    "Tom's Pizza is based in Booklyn, NYC and uses wood fire ovens for an Artesian vibe. \nFollow my social below",
                    maxFontSize: 14.0,
                    style: TextStyle(fontSize: 14.0),
                  ),
                  Divider(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Website',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        'https://tedspizza.com',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Divider(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        'info@tedspizza.com',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Divider(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Refered by',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        "Tom's Dough Company",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Divider(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Yelp',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        'yelp.com/tedspizza.com',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Divider(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Instagram',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        '@tomsdoughcompany',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Divider(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Facebook',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      FaIcon(
                        FontAwesomeIcons.link,
                        size: 18,
                      )
                    ],
                  ),
                  Divider(
                    height: 20,
                  ),
                  Text(
                    'Google Ratings',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 20,  right: 10.0, left: 10.0),
                    child: Row(
                      children: [
                        Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Color(0xFFDAFADF),
                                borderRadius: BorderRadius.circular(100)),
                            child: Center(
                              child: Text(
                                '4.3',
                                style: TextStyle(
                                    color: Color(0xFF00CE00), fontSize: 30),
                              ),
                            )),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    LinearPercentIndicator(
                      width: 200.0,
                      lineHeight: 9.0,
                      percent: 0.3,
                      progressColor: Color(0xFF2ec4b6),
                    ),
                    Text('5 Stars', style: TextStyle(color: Color(0xFF2ec4b6),)),
                                  ],
                                ),
                    
                    SizedBox(
                      height: 10,
                    ),
                     Row(
                                  children: [
                                    LinearPercentIndicator(
                      width: 200.0,
                      lineHeight: 9.0,
                      percent: 0.5,
                      progressColor: Colors.black,
                    ),
                    Text('4 Stars')
                                  ],
                                ),
                     SizedBox(
                      height: 10,
                    ),
                     Row(
                                  children: [
                                    LinearPercentIndicator(
                      width: w * 0.5,
                      lineHeight: 9.0,
                      percent: 0.2,
                      progressColor: Colors.black,
                    ),
                    Text('3 Stars')
                                  ],
                                ),

                              ],
                            ),
                            
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AutoSizeText('Previous transactions with this merchant',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w800)),
                  Divider(
                    height: 30,
                    thickness: 1,
                  ),
                  Container(
                    height: 200,
                    child: MyListViewBuilder(),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            width: w * 0.95,
            margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Color(0xFF0fb79b),
              ),
              child: Text(
                'Decline or Edit',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              onPressed: () {},
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
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Text(
                'Jan 10, 2021',
                style: TextStyle(fontSize: 15.0),
              ),
            ),
            trailing: Text(
              "+\u0024154",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            title: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "NIPKON",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                )),
          );
        });
  }
}
