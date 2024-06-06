
// FALTA O CODIGO DO JOGO E ADICIONAR NA LISTA

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Labirinto extends StatefulWidget {
  const Labirinto({super.key});

  @override
  State<Labirinto> createState() => _AcoesState();
}

class _AcoesState extends State<Labirinto> {
  bool _isLoading = true;
  @override
  Widget build(BuildContext context) { 
    return 
      Scaffold(
      
      body: 
          
          Stack(
            children: [
              InAppWebView(
                initialUrlRequest: URLRequest(
                                  url: WebUri.uri(
                                    Uri.parse('https://wordwall.net/pt/embed/24469f5b004a40fdb124329187ef9578?themeId=21&templateId=69&fontStackId=0'),
                                  ),
                                ),
                
                onLoadStart: (controller, url) {
                  setState(() {
                    _isLoading = true;
                  });
                },
                onLoadStop: (controller, url) {
                  setState(() {
                    _isLoading = false;
                  });
                },
              ),
              if (_isLoading)
                const Center(
                  child: 
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                        Text('Aguarde....'),
                      ],
                    ),
                ),
            ],
          )
      );
  }
}