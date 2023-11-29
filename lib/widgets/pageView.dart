import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/pdfViewScreen.dart';
import 'package:get/get.dart';

class myPageView extends StatelessWidget {
  late PageController _pageController;

  myPageView({super.key});

  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        CarouselSlider(
          items: [
            //1st Image of Slider
            GestureDetector(
              onTap: () => Get.to(PdfPage(assetPath: 'assets/istfetih.pdf')),
              child: Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/fetihslider.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            //2nd Image of Slider
            GestureDetector(
              onTap: () => Get.to(PdfPage(assetPath: 'assets/misirseferi.pdf')),
              child: Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/misirseferislider.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            //3rd Image of Slider
            GestureDetector(
              onTap: () => Get.to(PdfPage(assetPath: 'assets/mohac.pdf')),
              child: Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/mohacslider.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],

          //Slider Container properties
          options: CarouselOptions(
            height: 200.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 300),
            viewportFraction: 0.8,
          ),
        ),
      ],
    );
  }
}
