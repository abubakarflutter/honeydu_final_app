import 'package:flutter/material.dart';
import 'package:honeydu_final_app/widgets/empty.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

class Pay extends StatefulWidget {
  const Pay({Key? key}) : super(key: key);

  @override
  _PayState createState() => _PayState();
}

class _PayState extends State<Pay> {
  String text = 'you have sent';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          brightness: Brightness.light,
          elevation: 1,
          backgroundColor: Colors.white,
          title: Center(
              child: Text(
            'Pay',
            style: TextStyle(fontSize: 15.0, color: Colors.black),
          )),
          bottom: TabBar(
              indicatorColor: Color(0xff0fb79b),
              isScrollable: true,
              labelColor: Color(0xff0fb79b),
              unselectedLabelColor: Colors.grey,
              indicatorWeight: 2,
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              indicator: MD2Indicator(
                indicatorHeight: 0,
                indicatorSize: MD2IndicatorSize.normal,
                indicatorColor: Colors.teal,
              ),
              tabs: [
                Tab(
                  child: Container(
                      child: IconButton(
                    icon: Icon(
                      Icons.account_circle_rounded,
                      color: Colors.grey,
                    ),
                    iconSize: 20,
                    onPressed: () {},
                  )),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Inbox',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Scheduled',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Paid',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                      child: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    iconSize: 20,
                    onPressed: () {},
                  )),
                ),
              ]),
        ),
        body: TabBarView(
          children: <Widget>[
            EmptyPage(),
            EmptyPage(),
            Listview(),
            EmptyPage(),
            EmptyPage(),
          ],
        ),
      ),
    );
  }
}
