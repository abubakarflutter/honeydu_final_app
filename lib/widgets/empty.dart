import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  EmptyPage({Key? key}) : super(key: key);

  String text = "You haven't send any payments yet,";
  final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()
    ..onTap = () {};
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Image.asset('images/empty.png'),
              height: 250,
              width: 250,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: text,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontStyle: FontStyle.normal)),
                TextSpan(
                    text: 'send one now',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF212529),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal),
                    recognizer: _gestureRecognizer), // this is invisible
              ]),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Divider(
            color: Colors.grey,
            height: 4.0,
          ),
          SizedBox(height: 30),
          Container(
            height: 48,
            width: w * 0.90,
            decoration: BoxDecoration(
              color: Color(0xff0fb79b),
              borderRadius: BorderRadius.circular(7),
            ),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                'Review or Request Payment',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class Card1 extends StatelessWidget {
  Card1({Key? key, Column? child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        focusColor: Colors.grey,
        highlightColor: Colors.grey,
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album),
                title: Text('The Enchanted Nightingale'),
                subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('BUY TICKETS'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    child: const Text('LISTEN'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ));
  }
}

class Listview extends StatelessWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              autofocus: true,
              contentPadding: EdgeInsets.only(bottom: 5.0),
              leading: Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Icon(
                  Icons.account_circle,
                  size: 40.0,
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 20.0, top: 7.0),
                child: Text(
                  "\u0024 10",
                  style: TextStyle(
                      color: Color(0xff00d500),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              title: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 20.0, 0.0, 20.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Corol Digital  ',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'has paid you',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  )),
              subtitle: Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 10.0),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Text(
                    "#001",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
