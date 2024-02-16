import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:greeland/Login.dart';

import 'package:greeland/carousel_pages.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Greeland',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Greeland'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => Inicio();
}

class Inicio extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: (Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // ignore: avoid_unnecessary_containers
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 5),

                    //width: 50,
                    //height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              "Greeland",
                              style: TextStyle(
                                  height: 2,
                                  fontFamily: 'sfu',
                                  fontSize: 16,
                                  letterSpacing: 3.3),
                            )),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            "__________________",
                            style: TextStyle(height: -0.2),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        children: const <Widget>[
                          Text("Encuentra tus",
                              style: TextStyle(
                                fontFamily: 'sfm',
                                fontSize: 40,
                              )),
                          Text("plantas",
                              style: TextStyle(
                                  fontFamily: 'sfm', fontSize: 40, height: 1)),
                          Text("favoritas",
                              style: TextStyle(
                                  fontFamily: 'sfm', fontSize: 40, height: 1))
                        ],
                      )),
                ],
              ),
            ),

            // ignore: avoid_unnecessary_containers
            Container(
              child: Image.asset("assets/images/fondo.png"),
            ),

            Container(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 220,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        duration: const Duration(milliseconds: 700),
                        //curve: Curves.elasticOut,
                        curve: Curves.easeInQuint,
                        type: PageTransitionType.fade,
                        child: const login(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    backgroundColor: const Color.fromARGB(181, 6, 92, 20),
                  ),
                  child: const Text(
                    "¡Vamos!",
                    style: TextStyle(fontFamily: 'sfr', fontSize: 36),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(
                width: 180,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        duration: const Duration(milliseconds: 700),
                        //curve: Curves.elasticOut,
                        curve: Curves.easeInQuint,
                        type: PageTransitionType.fade,
                        child: const Carousel(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    backgroundColor: const Color.fromARGB(181, 3, 185, 34),
                  ),
                  child: const Text(
                    "Navegar",
                    style: TextStyle(fontFamily: 'sfr', fontSize: 25),
                  ),
                ),
              ),
            ),
          ],
        ))));
  }
}
