import 'package:flutter/material.dart';

class Export extends StatefulWidget {
  const Export({Key? key}) : super(key: key);

  @override
  _ExportState createState() => _ExportState();
}

class _ExportState extends State<Export> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          excludeHeaderSemantics: false,
          toolbarHeight: 50,
          centerTitle: true,
          leading: Padding(
            padding: EdgeInsets.only(left: 8.0, top: 15),
            child: Text("Cancel",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff0fb79b),
                  fontWeight: FontWeight.bold,
                )),
          ),
          backgroundColor: Colors.white,
          title: Text(
            "Export",
            style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold),
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(height: 50),
                  child: TextField(
                    decoration: new InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 0),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 0),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: new OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      )),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.search,
                            size: 20,
                            color: Colors.grey[500],
                          ),
                          color: Colors.grey,
                          onPressed: () {},
                        ),
                      ),
                      hintText: "Search Templates",
                      hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500]),
                    ),
                    textInputAction: TextInputAction.search,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Monthly",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text("Quickly export of past month data",
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 12,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: IconButton(
                      autofocus: false,
                      icon: Icon(
                        Icons.create_new_folder_outlined,
                        color: Color(0xff0fb79b),
                      ),
                      iconSize: 40,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: w,
                height: 43,
                color: Colors.grey[100],
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Text(
                    "Format your expert",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: Text(
                      "Data",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 135.0,
                    ),
                    child: Text(
                      "Incoming,outgoing,pending",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.chevron_right,
                      color: Colors.grey[300],
                    ),
                    iconSize: 30,
                    onPressed: () {},
                  ),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Timeframe",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 132.0),
                    child: Text(
                      "7/1/2020-8/1/2020",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.chevron_right,
                      color: Colors.grey[300],
                    ),
                    iconSize: 30,
                    onPressed: () {},
                  ),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "People",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 245.0),
                    child: Text(
                      "all",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.chevron_right,
                      color: Colors.grey[300],
                    ),
                    iconSize: 30,
                    onPressed: () {},
                  ),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Type",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 255.0),
                    child: Text(
                      "csv",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.chevron_right,
                      color: Colors.grey[300],
                    ),
                    iconSize: 30,
                    onPressed: () {},
                  ),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Destination",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 105.0),
                    child: Text(
                      "dpiccionlini@gmail.com",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.chevron_right,
                      color: Colors.grey[300],
                    ),
                    iconSize: 30,
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
            ],
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
