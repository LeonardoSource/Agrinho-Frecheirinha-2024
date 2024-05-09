import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {

  final List categoria;
  
  QuizApp(this.categoria, {super.key});

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int _currentQuestionIndex = 0;
  // Armazena o pontuação
  double pontosMarcados = 0;

  String nivel(double score){
    if (score > 30){
      return "Parabéns! Se divirta!";
    } else {
      return "Tente novamente e melhore sua pontuação";
    }
  }
  
  void playCorrect (){
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
        Audio("assets/songs/correct.mp3"),
    );
    assetsAudioPlayer.play();
  }
  void playWrong (){
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
        Audio("assets/songs/wrong.mp3"),
    );
    assetsAudioPlayer.play();
  }
  void playFinal (){
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
        Audio("assets/songs/final.wav"),
    );
    assetsAudioPlayer.play();
  }
  void playLoop (){
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
        Audio("assets/songs/loop.mp3"),
    );
    assetsAudioPlayer.play();
  }
  // Aqui e a funcao do alerta da pontuacao final
  void ExibePontuacao(BuildContext context, double score){
    showDialog(
      context: context, 
      builder: (context) {
        playFinal();
        return AlertDialog(
          title: Text('$score PONTOS!'),
          content: Text(nivel(score)),
          actions: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(

                side: BorderSide(color: const Color.fromARGB(255, 5, 3, 3), width: 2),
                backgroundColor: Colors.greenAccent,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),

              )),
              

              onPressed: () => Navigator.of(context).pop(),
              
              child: Text(
                'Responder Novamente',
                style: TextStyle(color: Colors.black),
              ),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(

                side: BorderSide(color: const Color.fromARGB(255, 5, 3, 3), width: 2),
                backgroundColor: Colors.redAccent,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),

              )),
              
              // #########
              // Aqui o navigator volta duas vezes as janela
              onPressed: () => Navigator.of(context).popUntil((route) => route.isFirst),
              
              child: Text(
                'Responder Outros Quizes',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ]
        );
      }      
    );
    // zera a pontuacao assim que se exibe o total de pontos
    pontosMarcados = 0;
  }


  void _checkAnswer(int selectedIndex, BuildContext buttonContext) {
    if (selectedIndex == widget.categoria[_currentQuestionIndex]['correctIndex']) {
      // Resposta correta
      // chama som
      playCorrect();
      setState(() {
        pontosMarcados = pontosMarcados + 10;
      });
    } else {
      // Resposta incorreta
      playWrong();
    }

    // Avançar para a próxima pergunta
    setState(() {
      _currentQuestionIndex = _currentQuestionIndex + 1;
      if (_currentQuestionIndex > widget.categoria.length - 1) {
          // exibir mensagem da pontuacao
          _currentQuestionIndex = 0;
          ExibePontuacao(context, pontosMarcados);
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    // armazena o tamanho da tela
    double tamanhoTela = MediaQuery.of(context).size.width;

    // PROGRAMA PRINCIPAL
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Agrinho'),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              SizedBox(height: 20),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  // Botao de voltar
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(

                      fixedSize: Size(tamanhoTela*0.4, 50),
                      side: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 2),
                      backgroundColor: const Color.fromARGB(255, 255, 82, 203),
                      //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),

                    )),
                    
                    onPressed: () => Navigator.pop(context),
                    
                    child: const Text(
                      'Voltar',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  
                  SizedBox(width: 20,),
                  // Mostra a pontuação
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(

                      fixedSize: Size(tamanhoTela*0.4, 50),
                      side: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 2),
                      backgroundColor: Colors.yellowAccent,
                      //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),

                    )),
                    
                    // Animacao quando o botao da pontuuacao é pressionado
                    // SUBSTITUIR POR UM CHAMADA DE JANELA
                    onPressed: () => print('Voce tem 10 pontos'),
                    
                    child: Text(
                      pontosMarcados.toString() + " Pontos",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),
              
              // Questao em si
              Text(
                widget.categoria[_currentQuestionIndex]['question'],
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              SizedBox(height: 20),
              
              Column(
                children: 
                List<Widget>.generate(
                  widget.categoria[_currentQuestionIndex]['answers'].length,
                  (index) => Container(

                    padding: EdgeInsets.fromLTRB(12, 0, 12, 0),

                    child: 
                      Column(
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(

                              fixedSize: Size(tamanhoTela, 50),
                              side: BorderSide(color: const Color.fromARGB(255, 5, 3, 3), width: 2),
                              backgroundColor: Colors.greenAccent,
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),

                            )),
                            
                            onPressed: () => _checkAnswer(index, context),
                            
                            child: Text(
                              widget.categoria[_currentQuestionIndex]['answers'][index],
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                ),
                            ),
                          ),
                          // Espacamento para os botoes
                          const SizedBox(height: 12,),
                        ],
                      ),
                  ),
                  
                ),
              ),

              Image.asset('assets/logoagrinho.png', width: tamanhoTela * 0.4,),
            ],
          ),
        ),
      ),
    );
  }
}
