import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class InfoEscola extends StatefulWidget {
  @override
  _ImageGalleryState createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<InfoEscola> {
  final List<String> imageUrls = [
    "assets/escola/1.jpg",
    "assets/escola/2.jpg",
    "assets/escola/3.jpg",
    "assets/escola/4.jpg",
    "assets/escola/5.jpg",
    "assets/escola/6.jpg",
    "assets/escola/7.jpg",
    "assets/escola/8.jpg",
    "assets/escola/9.jpg",
    "assets/escola/10.jpg",
    "assets/escola/11.jpg",
    "assets/escola/12.jpg",
    "assets/escola/13.jpg",
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeria de Imagens'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: PhotoViewGallery.builder(
                itemCount: imageUrls.length,
                builder: (context, index) {
                  return PhotoViewGalleryPageOptions(
                    imageProvider: AssetImage(imageUrls[index]),
                    minScale: PhotoViewComputedScale.contained,
                    maxScale: PhotoViewComputedScale.covered * 2,
                    heroAttributes: PhotoViewHeroAttributes(tag: index), // Para hero animation
                  );
                },
                scrollPhysics: BouncingScrollPhysics(),
                backgroundDecoration: BoxDecoration(
                  color: Colors.green,
                ),
                pageController: PageController(),
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.4),
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Imagem ${currentIndex + 1} de ${imageUrls.length}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Na nossa Escola, situada na cidade de Frecheirinha-CE, cultivamos o conhecimento, amor pela educação, e mantemos um sério compromisso com a aprendizagem.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
