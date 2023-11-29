import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/pdfViewScreen.dart';
import 'package:get/get.dart';

class Yazarlar extends StatelessWidget {
  const Yazarlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          height: 50.0,
          //color: Colors.cyan,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(235, 131, 116, 76),
                Color.fromARGB(146, 133, 133, 108)
              ])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: GestureDetector(
                    onTap: () => Get.to(
                        PdfPage(assetPath: 'assets/melikehanimyazi.pdf'),
                        transition: Transition.leftToRight),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/melikehanimyazar.jpeg',
                        height: 50.0,
                        width: 50.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: GestureDetector(
                    onTap: () => Get.to(
                        PdfPage(assetPath: 'assets/beyzadehamzayazi.pdf'),
                        transition: Transition.leftToRight),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image.asset(
                        'assets/beyzadehamzayazar.jpeg',
                        height: 50.0,
                        width: 10.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: GestureDetector(
                    onTap: () => Get.to(
                        PdfPage(assetPath: 'assets/aysenurhanimyazi.pdf'),
                        transition: Transition.leftToRight),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/aysenuryazar.jpg',
                        height: 50.0,
                        width: 50.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ],
    );
  }
}


// Color.fromARGB(237, 205, 206, 199),
//                 Color.fromARGB(147, 88, 88, 86)