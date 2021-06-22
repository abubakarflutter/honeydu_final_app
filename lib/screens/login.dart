import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:honeydu_final_app/widgets/textfield.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String text1 = "Login in to Honeydu";
  String text2 =
      "By signing up you agree to Honeydu's Terms of service and Privacy Policy";

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffeaf9f8),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 38.0),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Honeydu",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0fb79b),
                                fontFamily: "AirbnbCerealBold"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Text(
                      text1,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xff0fb79b),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.0),
                Widget1(
                  hintText: "Email",
                  obsecureText: false,
                ),
                Widget1(
                  hintText: 'Password',
                  obsecureText: true,
                  suffixicon: IconButton(
                      icon: Icon(
                        Icons.visibility,
                        color: Color(0xff0fb79b),
                        size: 25,
                      ),
                      onPressed: () {}),
                ),
                SizedBox(height: 15),
                Container(
                  height: 45,
                  width: w * 0.80,
                  decoration: BoxDecoration(
                    color: Color(0xff0fb79b),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "Or",
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 45,
                  width: w * 0.80,
                  decoration: BoxDecoration(
                    color: Color(0xff0fb79b),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    child: Text(
                      'Sign in with Intuit',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Text(
                      "By signing up you agree tp Honeydu's Term of",
                      style: TextStyle(
                          color: Color(0xff0fb79b),
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " service and Privacy Policy",
                      style: TextStyle(
                          color: Color(0xff0fb79b),
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Center(
                    child: Text("Don't have an account ?",
                        style: TextStyle(
                            color: Color(0xff0fb79b),
                            fontSize: 14,
                            fontWeight: FontWeight.normal)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    child: GestureDetector(
                  child: Text("SIGN UP",
                      style: TextStyle(
                          color: Color(0xff0fb79b),
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  onTap: () {},
                )),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    child: GestureDetector(
                  child: Text("FORGET YOUR PASSWORD ?",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  onTap: () {},
                )),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
