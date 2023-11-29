import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screens/main-screen.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double opacity = 0.0;

  @override
  void initState() {
    super.initState();
    changeOpacity();
    Future.delayed(Duration(seconds: 7), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MainScreen()));
    });
  }

  @override
  void dispose() {
    //timer.cancel();
    super.dispose();
  }

  changeOpacity() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacity = opacity == 0.0 ? 1.0 : 0.0;
        if (opacity != 1.0) changeOpacity();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 0, 0, 0)
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/Logo.png',
                  height: 300.0,
                  width: 500.0,
                ),
              ],
            ),
            AnimatedOpacity(
              opacity: opacity,
              duration: Duration(seconds: 1),
              child: Text(
                "Ceride-i Selimiye \n جريد-ى صليميي",
                style: TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            ),
            CircularProgressIndicator(color: Colors.deepOrange),
          ],
        ),
      ),
    );
  }
}
