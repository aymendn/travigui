import 'dart:io';

import 'package:document_scanner/document_scanner.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScanScreen extends HookConsumerWidget {
  const ScanScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    File scannedDocument;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan Identity Card'),
      ),
      body: DocumentScanner(
        onDocumentScanned: (ScannedImage scannedImage) {
          print("document : ${scannedImage.croppedImage}");
          scannedDocument = scannedImage.getScannedDocumentAsFile();
        },
      ),
    );
  }
}
