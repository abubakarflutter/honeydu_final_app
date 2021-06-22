import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Hello extends StatefulWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ClipPath(
        child: Stack(
          //fit: StackFit.expand,
          children: [
            Container(
              color: Colors.teal,
              width: w,
              height: h,
            ),
            // Container(
            //   decoration: BoxDecoration(
            //       color: Colors.teal,
            //       gradient: LinearGradient(
            //           begin: Alignment.centerRight,
            //           end: Alignment(-1.0, -1.0),
            //           colors: [Colors.black])),
            // ),

            //card
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: EdgeInsets.all(20),
                  height: 340,
                  width: w * 80,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 23.0),
                        child: CircleAvatar(
                          maxRadius: 35,
                          minRadius: 35,
                          backgroundImage: NetworkImage(
                              'https://cdn3.iconfinder.com/data/icons/food-drinks-color-1/128/pizza-whole-2-512.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          "Tom's Pizza Nyc",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.facebookF,
                                color: Color(0xff0fb79b),
                                size: 30,
                              ),
                              onPressed: () {}),
                          IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.yelp,
                                color: Color(0xff0fb79b),
                                size: 30,
                              ),
                              onPressed: () {}),
                          IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.google,
                                color: Color(0xff0fb79b),
                                size: 30,
                              ),
                              onPressed: () {}),
                          IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.instagram,
                                color: Color(0xff0fb79b),
                                size: 33,
                              ),
                              onPressed: () {}),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
                          height: 55,
                          width: w * 0.95,
                          decoration: BoxDecoration(
                            color: Color(0xFF0fb79b),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: Text(
                              "Pay Tom's Pizza",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
        //define clipper here
        clipper: HeaderColor(),
      ),
    );
  }
}

class HeaderColor extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 400);
    path.lineTo(size.width, size.height - 150);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
