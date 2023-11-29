import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/categoryScreen.dart';
import 'package:flutter_application_1/screens/pdfViewScreen.dart';
import 'package:get/get.dart';

class Category extends StatelessWidget {
  String title;
  Color titleColor;
  String imagePath;
  List<String> pdfPaths;
  List<String> haberBasliklari;
  List<String> haberImage;
  List<String> haberIcerik;
  String baslik;

  Category(
      {super.key,
      required this.title,
      required this.titleColor,
      required this.imagePath,
      required this.pdfPaths,
      required this.haberBasliklari,
      required this.haberImage,
      required this.haberIcerik,
      required this.baslik});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(
          CategoryScreen(
            haberBasliklari: haberBasliklari,
            haberIcerik: haberIcerik,
            haberImage: haberImage,
            pdfPaths: pdfPaths,
            baslik: baslik,
          ),
          transition: Transition.leftToRight),
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fitWidth,
        )),
        child: Card(
          elevation: 10,
          color: Colors.transparent,
          child: ListTile(
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: titleColor,
                  fontFamily: 'Condiment',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
