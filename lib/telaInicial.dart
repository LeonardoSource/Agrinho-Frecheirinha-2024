import 'package:flutter/material.dart';
import 'aboutffp.dart';
import 'aboutfrecheirinha.dart';
import 'aboutagrinho.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: 1.0,
          image: AssetImage('assets/fundo.png'), // Caminho da imagem
          fit: BoxFit.fitWidth,
        ),
      ),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double maxHeight = constraints.maxHeight; // Altura máxima disponível
          double tamanhoTela = MediaQuery.of(context).size.width;

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: maxHeight * 0.3,
                  child: Image.asset('assets/agrinho2023.png'),
                ),
                Card(
                  color: Colors.green,
                  elevation: 10, // Controle a intensidade da sombra
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Text(
                          'BEM VINDO',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 0.03 * maxHeight,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'ESSE APP FAZ PARTE DAS AÇÕES DO PROGRAMA AGRINHO DA ESCOLA FRANCISCO FERREIRA PONTES',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 0.03 * maxHeight,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'FRECHEIRINHA - CE',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 0.03 * maxHeight,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                /*SizedBox(
                  height: maxHeight * 0.5,
                  child: CarouselInicial(),
                ),*/
                
                // BOTAO SOBRE O AGRINHO
                OutlinedButton(
                    style: OutlinedButton.styleFrom(

                      fixedSize: Size(tamanhoTela*0.8, 60),
                      side: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 2),
                      backgroundColor: Colors.cyanAccent,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),

                    )),
                    
                    // Animacao quando o botao da pontuuacao é pressionado
                    onPressed: () => Navigator.push(
                      context, 
                      MaterialPageRoute(builder: ((context) => InfoAgrinho()))),
                    
                    child: Text(
                    'Sobre o Agrinho',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                const SizedBox(height: 10),
                // BOTAO CONHECA A ESCOLA FRANCISCO FERREIRA
                OutlinedButton(
                    style: OutlinedButton.styleFrom(

                      fixedSize: Size(tamanhoTela*0.8, 60),
                      side: const BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 2),
                      backgroundColor: Colors.amberAccent,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),

                    ),
                ),
                    
                    // Animacao quando o botao da pontuuacao é pressionado
                    onPressed: () => Navigator.push(
                      context, 
                      MaterialPageRoute(builder: ((context) => InfoEscola()))),
                    
                    child: const Text(
                    'Conheça a Escola Francisco Ferreira Pontes',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                const SizedBox(height: 10),
                // BOTÃO CONHEÇA FRECHERINHA
                OutlinedButton(
                    style: OutlinedButton.styleFrom(

                      fixedSize: Size(tamanhoTela*0.8, 60),
                      side: const BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 2),
                      backgroundColor: Colors.redAccent,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),

                    )),
                    
                    // Animacao quando o botao da pontuuacao é pressionado
                    onPressed: () => Navigator.push(
                      context, 
                      MaterialPageRoute(builder: ((context) => InfoCity()))),
                    
                    child: const Text(
                    'Conheça Frecheirinha',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
