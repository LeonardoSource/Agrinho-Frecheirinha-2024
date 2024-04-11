import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DicasCarrousel extends StatefulWidget {
  final String path;
  final int quantDicas;

  DicasCarrousel(this.path, this.quantDicas);

  @override
  _DicasCarrouselState createState() => _DicasCarrouselState();
}

class _DicasCarrouselState extends State<DicasCarrousel> {
  List<String> imageUrls = [
    '1.png', '2.png', '3.png', '4.png', '5.png', '6.png', '7.png', '8.png', '9.png', '10.png'
  ];

  int _currentIndex = 0;
  CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double carouselHeight = screenHeight * 0.80; // Adjust the percentage as needed

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: widget.quantDicas,
              itemBuilder: (context, index, realIndex) {
                return Image.asset(
                  widget.path + imageUrls[index],
                  fit: BoxFit.contain,
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                height: carouselHeight,
                viewportFraction: 1,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              carouselController: _carouselController,
            ),
          ],
        ),
      ),
    );
  }
}
