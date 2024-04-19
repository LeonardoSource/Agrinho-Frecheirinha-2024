import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Identify extends StatefulWidget {
  const Identify({super.key});

  @override
  State<Identify> createState() => _AcoesState();
}

class _AcoesState extends State<Identify> {
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
                                    Uri.parse('https://wordwall.net/pt/embed/8c29705576bc4f8993a962c686fca927?themeId=1&templateId=22&fontStackId=0'),
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