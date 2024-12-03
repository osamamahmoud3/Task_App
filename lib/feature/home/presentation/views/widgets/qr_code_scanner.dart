import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrCodeScanner extends StatelessWidget {
  const QrCodeScanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MobileScanner(
        onDetect: (capture) {
          final List<Barcode> barCodes = capture.barcodes;
          final String? qrCodeData =
              barCodes.isNotEmpty ? barCodes.first.rawValue : null;
          final Uint8List? image = capture.image;

          if (qrCodeData != null) {
            final String taskId = qrCodeData;
          } else {}
        },
      ),
    );
  }
}

class TaskDetailsPage extends StatelessWidget {
  final String taskId;

  const TaskDetailsPage({super.key, required this.taskId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Details'),
      ),
      body: Center(
        child: Text('Task ID: $taskId'),
      ),
    );
  }
}
