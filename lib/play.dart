import 'package:flutter/material.dart';
import 'MemoryGame.dart';
import 'QuizGame.dart';
import 'IdentifyGame.dart';

// Mapeamento dos caminhos das imagens nome as janelas dos jogos
  final List<Map<String, dynamic>> cardItems = [
    {
      'imagem': 'assets/icons/memory.png',
      'func' : () => Memory(),
    },
    {
      'imagem': 'assets/icons/quiz.png',
      'func' : () => QuizGame(),
    },
    {
      'imagem': 'assets/icons/identify.png',
      'func' : () => Identify(),
    },
  ];

class GridGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hora de Jogar!!"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 1.0,
            image: AssetImage('assets/fundoplay.png'), // Caminho da imagem
            fit: BoxFit.fitWidth,
          ),
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Two columns
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 7.0,
          ),
          itemCount: 3, // Only show two items
          itemBuilder: (context, index) {
          final cardNames = ["Jogo da Memória", "Quiz", "Identifique"];
            return GestureDetector(
              
               onTap: () {
                    
                    Navigator.push(
                      
                      context,
                      MaterialPageRoute(
                        builder: (context) => cardItems[index]['func']() )
                    
                    );
                    
                    },

              child: Card(
                shadowColor: Colors.black,
                elevation: 7,
                child: Center(
                  child: Column(
                    children: [
                      // Placeholder for image (replace with your image asset path)
                      Expanded(child: Image.asset(cardItems[index]['imagem'], fit: BoxFit.cover)),
                      SizedBox(height: 3),
                      Center(
                        child: Text(
                          cardNames[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
