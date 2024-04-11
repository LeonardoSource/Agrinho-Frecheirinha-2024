import 'package:flutter/material.dart';
class InfoAgrinho extends StatelessWidget {
  const InfoAgrinho({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(),
            
          body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text("Programa Agrinho",
              textAlign: TextAlign.justify,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              
              Text("O Agrinho é um programa de responsabilidade social do Serviço de Aprendizagem Rural SENAR/CE",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 20),),
              
              Text("Objetivo",
              textAlign: TextAlign.justify,
              style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 20),),
              
              Text("Despertar a conciência de cidadania nas crianças e jovens em fase escolar, tedno a Ética e a Sustentabilidade como linhas condutoras de abordagem",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 20)),

            ],
          ),

        ),
    );
  }
}