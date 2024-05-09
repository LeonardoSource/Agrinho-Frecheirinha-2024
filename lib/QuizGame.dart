import 'package:flutter/material.dart';
import 'quiz.dart';
import 'questions.dart';

class QuizGame extends StatelessWidget {
  
  // Mapeamento dos caminhos das imagens nome e questoes
  final List<Map<String, dynamic>> cardItems = [
    {
      'imagem': 'assets/lixo.png',
      'nome': 'Quiz Reciclagem', 
      'questao': reciclagem
    },
    {
      'imagem': 'assets/correndo.png',
      'nome': 'Quiz Exercite-se', 
      'questao': exercicio
    },
    {
      'imagem': 'assets/comida-saudavel.png',
      'nome': 'Quiz Alimentacao', 
      'questao': alimentacao
    },
    {
      'imagem': 'assets/terra.png',
      'nome': 'Quiz Sustentabilidade', 
      'questao': sustentabilidade
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Games do Agrinho"),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body:
        Container(
          
          // decoracao de fundo
          decoration: const BoxDecoration(
            image: DecorationImage(
              opacity: 1.0,
              image: AssetImage('assets/fundo.png'), // Caminho da imagem
              fit: BoxFit.fitWidth,
            )
                ),
          
          child: 
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Número de colunas no grid
                crossAxisSpacing: 10.0, // Espaçamento horizontal entre os cards
                mainAxisSpacing: 10.0, // Espaçamento vertical entre os cards
              ),
              
              itemCount: cardItems.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  
                  onTap: () {
                    
                    // Seleciona o terceiro iten da lista que e o nome da questao
                    Navigator.push(
                      
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizApp(cardItems[index]['questao']))
                    
                    );
                    
                    },
                  
                  
                  child:
                    Card(
                      
                      shadowColor: Colors.green,
                      elevation: 5,

                      child: Center(
                        child:
                        Container(
                          /*decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color.fromARGB(255, 195, 253, 197), Colors.white],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          ),*/
                          child: 
                            Column(
                              children: [
                                
                                // Load da imagem e do texto no card
                                Expanded(child: Image.asset(cardItems[index]['imagem'], fit: BoxFit.contain,)),
                                SizedBox(height: 3),
                                Center(
                                  child: Text(cardItems[index]['nome'],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 3),
                              ]
                      ),
                        ),
                    )
                    ),
                );
              },
            ),
          ),
      );
    
  }
}
