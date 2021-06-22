import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


class ScannerScreen extends StatefulWidget {
  const ScannerScreen({Key? key}) : super(key: key);

  @override
  _ScannerScreenState createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {

  String qrCode = 'UNKOWN';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_ios, color: Colors.grey,),
        ),
        centerTitle: true,
        title: Text('Scan to Pay', style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: Center(
        child: OutlineButton(
          onPressed: (){
            scanQrCode();
          },
          child: Text('Scan Now', style: TextStyle(fontSize: 50),),
        ),
      ),

    );

  }

  Future<void> scanQrCode() async{
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
          '#ffffff',
          'Exit',
          true,
          ScanMode.QR
      );
      if (!mounted) return;

      setState(() {
        this.qrCode = qrCode;
      });
    } on PlatformException {
      qrCode = 'Failed to get platform version.';
    }

  }

}

