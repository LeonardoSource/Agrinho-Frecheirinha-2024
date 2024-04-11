import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class InfoCity extends StatefulWidget {
  @override
  _ImageGalleryState createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<InfoCity> {
  final List<String> imageUrls = [
    "assets/frecheirinha/alunos.png",
    "assets/frecheirinha/amo.png",
    "assets/frecheirinha/festa.png",
    "assets/frecheirinha/flecha.png",
    "assets/frecheirinha/olho.png",
    "assets/frecheirinha/placa.png",
    "assets/frecheirinha/praca.png",
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
              'Frecheirinha é um município brasileiro do estado do Ceará. Localiza-se na Mesorregião do Noroeste Cearense e pertence à Região Metropolitana de Sobral. A produção industrial representa a principal fonte de renda e ocupação na cidade, sobretudo da mão-de-obra feminina. A cidade se destaca como um importante pólo produtor de lingerie de referenciada qualidade, exportada para vários mercados consumidores nacionais e internacionais.',
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
