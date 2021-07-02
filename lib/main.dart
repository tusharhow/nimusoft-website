import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_webbie/constants.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  alignment: Alignment.topLeft,
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  color: tDefaultColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                          child: SvgPicture.asset(
                            'images/logo.svg',
                            color: Colors.white,
                            height: 150,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Row(
                            children: [
                              MenuItems(menus: 'Home'),
                              SizedBox(
                                width: 30,
                              ),
                              MenuItems(menus: 'About Us'),
                              SizedBox(
                                width: 30,
                              ),
                              MenuItems(menus: 'Contact Us'),
                              SizedBox(
                                width: 30,
                              ),
                              MenuItems(menus: 'Resume'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 180, 0, 0),
                  child: Text(
                    ' TOP RATED FLUTTER \n DEVELOPMENT\n COMPANY',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(110, 340, 0, 0),
                  child: Text(
                    ' NimuSoft Labs specializes in creating cost-effective and efficient applications\n with our perfectly crafted, creative and leading-edge flutter app development\n solutions for customers all around the globe. We are a Top-Rated Flutter\n Development Company around the Globe.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(1000, 180, 0, 0),
                      child: Image.asset(
                        'images/coding.png',
                        height: 380,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(115, 450, 0, 0),
                  child: Container(
                    height: 35,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.redAccent,
                    ),
                    child: Center(
                      child: Text(
                        'Request a Quote',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ]),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: NetworkImage(
                        'https://image.flaticon.com/icons/png/512/888/888848.png',
                      ),
                      height: 150,
                    ),
                    Image(
                      image: NetworkImage(
                          'https://image.flaticon.com/icons/png/512/196/196550.png'),
                      height: 150,
                    ),
                    Image(
                      image: NetworkImage(
                          'https://image.flaticon.com/icons/png/512/196/196559.png'),
                      height: 150,
                    ),
                    Image(
                      image: NetworkImage(
                          'https://image.flaticon.com/icons/png/512/196/196565.png'),
                      height: 150,
                    ),
                    Image(
                      image: NetworkImage(
                          'https://image.flaticon.com/icons/png/128/196/196578.png'),
                      height: 150,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItems extends StatelessWidget {
  const MenuItems({
    Key key,
    @required this.menus,
  }) : super(key: key);
  final String menus;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          menus,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
