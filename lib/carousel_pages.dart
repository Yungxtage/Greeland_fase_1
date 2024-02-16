import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Carousel'),
        ),
        body: CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 0.8, height: 250, autoPlay: true),
          items: [
            "assets/images/Medusa.jpg",
            "assets/images/Nopal cegador.jpg",
            "assets/images/Pinus parviflora.jpg"
          ].map((e) {
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    e,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
