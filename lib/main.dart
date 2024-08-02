import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrcodescanner/splash.dart';
import 'generate_qr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'QR Scanner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black
      ),
      home: QRScannerPage(),
    );
  }
}
