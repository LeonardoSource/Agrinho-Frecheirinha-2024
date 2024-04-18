import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'MeioAmbientePage.dart';
import 'acoesPage.dart';
import 'telaInicial.dart';
import 'play.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      title: "Programa Agrinho",
      theme: ThemeData(
        primarySwatch: Colors.green,
          )
      );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 0;

   
   // Lista de telas que 
   //serão exibidas ao selecionar um item da barra de navegação


  final List<Widget> _pages = [
    // 01 tela home
    const TelaInicial(),
    // 02 tela sobre saude
    const MeioAmbiente(),
    // 03 tela sobre as acoes desenvolvidas
    const Acoes(),
    // 04 tela sobre o quiz jogos
    GridGame(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _pages[_currentIndex], // Conteúdo da tela selecionada
      bottomNavigationBar: 
      
      SalomonBottomBar(

        currentIndex: _currentIndex, // Índice do item selecionado

        backgroundColor: Colors.green,
        selectedColorOpacity: 0.3,
        margin: const EdgeInsets.all(12),

        items: [
           
          SalomonBottomBarItem(
            icon: Image.asset("assets/icons/meioambiente.png"), 
            title: Text("Inicio"),
            selectedColor: Colors.white
            ),
          SalomonBottomBarItem(
            icon: Icon(Icons.health_and_safety), 
            title: Text("Saúde"),
            selectedColor: Colors.white,
            ),  
          SalomonBottomBarItem(
            icon: Icon(Icons.handshake), 
            title: Text("Ações"),
            selectedColor: Colors.white,
            ),
          SalomonBottomBarItem(
            icon: Icon(Icons.games), 
            title: Text("Games"),
            selectedColor: Colors.white,
            ),
        ],


        onTap: (index) {
          setState(() {
            _currentIndex = index; // Atualiza o índice ao selecionar um item
          });
        },
      
      ),
    );
  }
}
