import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:flutter/material.dart';

import '../widgets/go-back-fab.dart';

class EkonomiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SfPdfViewer.asset('assets/ekonomi.pdf'),
      floatingActionButton: goBackFab(),
    );
  }
}
