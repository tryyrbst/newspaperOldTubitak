import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/pdfViewScreen.dart';
import 'package:get/get.dart';

Widget customListTile(String haberBaslik, String haberImage, String haberIcerik,
    String pdfPath, BuildContext context) {
  return InkWell(
    onTap: () {
      Get.to(PdfPage(assetPath: pdfPath), transition: Transition.leftToRight);
    },
    child: Container(
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3.0,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              //let's add the height

              image: DecorationImage(
                  image: AssetImage(haberImage), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            haberBaslik,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              fontFamily: 'Condiment',
            ),
          ),
          Divider(),
          Text(
            haberIcerik,
            style: TextStyle(
              fontSize: 12.0,
              fontFamily: 'Oswald',
            ),
          ),
        ],
      ),
    ),
  );
}
