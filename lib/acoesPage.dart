import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Acoes extends StatefulWidget {
  const Acoes({super.key});

  @override
  State<Acoes> createState() => _AcoesState();
}

class _AcoesState extends State<Acoes> {
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
                                    Uri.parse('https://www.google.com/'),
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
                        Text('Aguarde o carregamento da página'),
                      ],
                    ),
                ),
            ],
          )


      );
  }
}