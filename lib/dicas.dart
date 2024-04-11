import 'package:flutter/material.dart';
import 'dicasCarousel.dart';

class Dica extends StatefulWidget {
  final String nomeDica;
  final String path; /// caminho das imagens
  final int QuantImg;

  const Dica(this.nomeDica, this.path, this.QuantImg, {super.key});

  @override
  State<Dica> createState() => _Dica();
}

class _Dica extends State<Dica> {

  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Define o formato do card
            side: BorderSide(
              color: Colors.blue, // Define a cor da borda do card
              width: 2.0, // Define a largura da borda
            ),
          ),
          color: _isExpanded ? Colors.blue : Colors.white, // Defina a cor do Card
          child: ListTile(
            leading: Image.asset('assets/medica.png', height: 200,), // Ícone
            subtitle: Text('Saiba Mais'),
            title: Text(
              '${widget.nomeDica}\n',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              // Aqui você pode navegar para outra tela ou exibir um widget quando o Card é clicado
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetalhesDica(widget.nomeDica, widget.path, widget.QuantImg),
              ));
            },
          ),
        ),
      ),
    );
  }
}

class DetalhesDica extends StatelessWidget {
  final String nomeDica;
  final String path;
  final int QuantidadeDeImagens;

  const DetalhesDica(this.nomeDica, this.path, this.QuantidadeDeImagens);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nomeDica),
      ),
      body: Column(
        children: [
          DicasCarrousel(path, QuantidadeDeImagens)
          // Aqui você pode adicionar mais detalhes da dica
        ],
      ),
    );
  }
}
