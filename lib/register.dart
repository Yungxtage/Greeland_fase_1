import 'package:flutter/material.dart';
import 'package:greeland/login.dart';
import 'package:page_transition/page_transition.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Greeland',
      theme: ThemeData(),
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
        body: SingleChildScrollView(
            child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/figuras.png"),
                  fit: BoxFit.fill)),
          child: (Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // ignore: avoid_unnecessary_containers
              Container(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                duration: const Duration(milliseconds: 700),
                                //curve: Curves.elasticOut,
                                curve: Curves.easeInQuint,
                                type: PageTransitionType.leftToRight,
                                child: const login(),
                              ),
                            );
                          },
                          icon: const Icon(Icons.arrow_back_ios_new_rounded),
                          iconSize: 30,
                        )),
                    // ignore: avoid_unnecessary_containers
                    Container(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Column(
                          children: const <Widget>[
                            Text(
                              "Registrarse",
                              style: TextStyle(fontFamily: 'sfs', fontSize: 36),
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 50),
              ),
              Container(
                padding: const EdgeInsets.only(right: 40),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const <Widget>[
                    Text(
                      "Registrate con una de las opciones:",
                      style: TextStyle(fontSize: 22, fontFamily: 'sfr'),
                    ),
                  ],
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Row(
                  children: <Widget>[
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: ButtonBar(
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                minimumSize: const Size(168, 69),
                                side: const BorderSide(
                                    width: 3, color: Colors.green)),
                            child: Image.asset("assets/images/Google.png",
                                scale: 25),
                          ),
                          OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  minimumSize: const Size(168, 69),
                                  side: const BorderSide(
                                      width: 3, color: Colors.green)),
                              child: Image.asset("assets/images/Facebook.png",
                                  scale: 10)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //Nombre texto
              Container(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const <Widget>[
                    Text(
                      "Nombre Completo",
                      style: TextStyle(fontSize: 20, fontFamily: 'sfr'),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
              ),
              //Nombre box
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 221, 221, 221),
                        borderRadius: BorderRadius.circular(10)),
                    child: const TextField(
                      cursorColor: Colors.green,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20)),
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(66, 66, 66, 1),
                      ),
                      //obscureText: true,
                    ),
                  )
                ]),
              ),
              //Correo texto
              Container(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const <Widget>[
                    Text(
                      "Correo electrónico",
                      style: TextStyle(fontSize: 20, fontFamily: 'sfr'),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
              ),
              //Correo Box
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 221, 221, 221),
                        borderRadius: BorderRadius.circular(10)),
                    child: const TextField(
                      cursorColor: Colors.green,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20)),
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(66, 66, 66, 1),
                      ),
                      //obscureText: true,
                    ),
                  )
                ]),
              ),
              Container(padding: const EdgeInsets.symmetric(vertical: 5)),
              //Pass text
              Container(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const <Widget>[
                    Text(
                      "Contraseña",
                      style: TextStyle(fontSize: 20, fontFamily: 'sfr'),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
              ),
              //Pass Box
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 221, 221, 221),
                        borderRadius: BorderRadius.circular(10)),
                    child: const TextField(
                      cursorColor: Colors.green,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20)),
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(66, 66, 66, 1),
                      ),
                      obscureText: true,
                    ),
                  )
                ]),
              ),
              //BTN Registrarse
              Container(
                padding: const EdgeInsets.only(top: 40),
                child: SizedBox(
                  width: 270,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: const Color.fromARGB(255, 1, 148, 25),
                    ),
                    child: const Text(
                      "Registrarse",
                      style: TextStyle(fontFamily: 'sfr', fontSize: 28),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "¿Ya tienes una cuenta?",
                      style: TextStyle(fontFamily: 'sfr', fontSize: 17),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              duration: const Duration(milliseconds: 700),
                              curve: Curves.elasticOut,
                              //curve: Curves.easeInQuint,
                              type: PageTransitionType.leftToRight,
                              child: const login(),
                            ),
                          );
                        },
                        child: const Text(
                          "Iniciar sesión",
                          style: TextStyle(
                              fontFamily: 'sfr',
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 40),
              )
            ],
          )),
        )));
  }
}
