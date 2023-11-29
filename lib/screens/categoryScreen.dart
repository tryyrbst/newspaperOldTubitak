import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/widgets/app-bar.dart';
import 'package:flutter_application_1/widgets/customListTile.dart';
import 'package:flutter_application_1/widgets/go-back-fab.dart';

import '../widgets/NavBar.dart';

class CategoryScreen extends StatelessWidget {
  final List<String> pdfPaths;
  final List<String> haberBasliklari;
  final List<String> haberImage;
  final List<String> haberIcerik;
  final String baslik;

  const CategoryScreen(
      {super.key,
      required this.pdfPaths,
      required this.haberBasliklari,
      required this.haberImage,
      required this.haberIcerik,
      required this.baslik});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyNavBar(),
      appBar: myAppBar(
        appBar: AppBar(),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
            Center(
              child: Text(
                baslik,
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Oswald', fontSize: 28.0),
              ),
            ),
            Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
            Container(
              height: 1000.0,
              color: Colors.black,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: haberBasliklari.length,
                itemBuilder: (context, index) {
                  return customListTile(
                      haberBasliklari[index],
                      haberImage[index],
                      haberIcerik[index],
                      pdfPaths[index],
                      context);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: goBackFab(),
    );
  }
}
