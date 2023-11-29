import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../widgets/go-back-fab.dart';

class PdfPage extends StatelessWidget {
  final String assetPath;

  const PdfPage({super.key, required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SfPdfViewer.asset(assetPath),
      floatingActionButton: goBackFab(),
    );
  }
}
