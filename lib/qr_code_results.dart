import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ResultPage extends StatelessWidget {
  final Barcode? result;

  const ResultPage({required this.result});

  void _copyToClipboard(BuildContext context, var tex) {
    Clipboard.setData(ClipboardData(text: tex));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Center(child: Text('Copied to clipboard')),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Scan Result',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            onTap: () {
              _copyToClipboard(context, result!.code);
            },
            child: Text(
              'Scanned Result: ${result!.code}',
              style: TextStyle(fontSize: 15, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
