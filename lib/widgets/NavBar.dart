import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 70, 67, 67),
              Color.fromARGB(255, 44, 43, 43)
            ],
          ),
          image: DecorationImage(
            scale: 0.1,
            image: AssetImage('assets/Logo.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: ListView(
          // Remove padding
          padding: EdgeInsets.zero,
          children: [
            Container(
              margin: EdgeInsets.only(top: 12.0),
              child: Center(
                child: Text(
                  'MENU',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Condiment',
                      color: Colors.deepOrange),
                ),
              ),
            ),
            // UserAccountsDrawerHeader(
            //   accountName: Text('Oflutter.com'),
            //   accountEmail: Text('example@gmail.com'),
            //   currentAccountPicture: CircleAvatar(
            //     child: ClipOval(
            //       child: Image.network(
            //         'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
            //         fit: BoxFit.cover,
            //         width: 90,
            //         height: 90,
            //       ),
            //     ),
            //   ),
            //   decoration: BoxDecoration(
            //     color: Colors.grey,
            //     image: DecorationImage(
            //         fit: BoxFit.fill,
            //         image: AssetImage('assets/newspaperBackground.png')),
            //   ),
            // ),
            ListTile(
              leading: Icon(Icons.image_rounded, color: Colors.white),
              title: Text(
                'Galeri',
                style: TextStyle(
                    fontFamily: 'Condiment', fontSize: 20, color: Colors.white),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.date_range, color: Colors.white),
              title: Text(
                'Kronoloji',
                style: TextStyle(
                    fontFamily: 'Condiment', fontSize: 20, color: Colors.white),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety, color: Colors.white),
              title: Text(
                'Saglık',
                style: TextStyle(
                    fontFamily: 'Condiment', fontSize: 20, color: Colors.white),
              ),
              onTap: () => null,
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.info_outline_rounded, color: Colors.white),
              title: Text(
                'Hakkımızda',
                style: TextStyle(
                    fontFamily: 'Condiment', fontSize: 20, color: Colors.white),
              ),
              onTap: () => null,
            ),
            // ListTile(
            //   leading: Icon(Icons.food_bank),
            //   title: Text('Yemek'),
            //   onTap: () => null,
            // ),
            // ListTile(
            //   leading: Icon(Icons.description),
            //   title: Text('Policies'),
            //   onTap: () => null,
            // ),
            // Divider(),
            // ListTile(
            //   title: Text('Exit'),
            //   leading: Icon(Icons.exit_to_app),
            //   onTap: () => null,
            // ),
          ],
        ),
      ),
    );
  }
}
