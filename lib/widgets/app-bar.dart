import 'package:flutter/material.dart';

class myAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const myAppBar({required this.appBar});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      actions: <Widget>[
        Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/ottoman.png'),
              fit: BoxFit.fill,
            ),
            shape: BoxShape.circle,
          ),
        )
      ],
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.vertical(
      //     bottom: Radius.circular(30),
      //   ),
      // ),
      title: Center(
        child: Container(
          height: 70.0,
          width: 70.0,
          child: Image.asset(
            'assets/Logo.png',
            fit: BoxFit.fill,
          ),
        ),
        // child: Text(
        //   'Ceride-i Selimiye \n  جريد-ى صليميي  ',
        //   style: TextStyle(
        //       fontFamily: 'Condiment',
        //       fontSize: 20,
        //       color: Colors.white,
        //       fontWeight: FontWeight.normal),
        // ),
      ),
      flexibleSpace: Container(
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(
          //       colors: [
          //         Color.fromARGB(255, 10, 10, 10),
          //         Color(0xF4C0BDBD),
          //       ],
          //       begin: const FractionalOffset(0.0, 0.0),
          //       end: const FractionalOffset(1.0, 0.0),
          //       stops: [0.0, 1.0],
          //       tileMode: TileMode.clamp),
          //   // borderRadius: BorderRadius.only(
          //   //     bottomLeft: Radius.circular(30.0),
          //   //     bottomRight: Radius.circular(30.0)),
          // ),
          ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
