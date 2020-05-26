import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return _construirDetalhes();
  }

  Widget _construirDetalhes(){
    return Scaffold(
      body: Column(
        children: <Widget>[
          _construirImagemDetalhes("assets/images/ratatouille.jpg"),
          _construirTituloDetalhes("Ratatouille"),
          _construirLinhaIconesDetalhes("2-3 porções", "50min"),
          _construirSubtituloDetalhes("Ingredientes"),
          _construirTextoDetalhes("Aqui serão exibidos os ingredientes desta receita"),
          _construirSubtituloDetalhes("Modo de Preparo"),
          _construirTextoDetalhes("Aqui será exibido o modo de Preparo desta receita")
        ],
      ),
      appBar: _construirAppBar(),
    );
  }

  Widget _construirTituloDetalhes(titulo){
    return Text(titulo, style: TextStyle(color: Colors.deepOrange, fontSize: 30));
  }

  Widget _construirImagemDetalhes(imagem){
    return Image.asset(imagem);
  }

  Widget _construirLinhaIconesDetalhes(rendimento,tempoPreparo){
    return Row(
      children: <Widget>[
        _contruirColunaIconeDetalhes(Icons.restaurant, rendimento),
        _contruirColunaIconeDetalhes(Icons.timer, tempoPreparo)
      ],
    );
  }

  Widget _contruirColunaIconeDetalhes(icone, texto){
    return Expanded(
      child: Column(
        children: <Widget>[
          Icon(icone, color: Colors.deepOrange),
          Text(texto, style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }

  Widget _construirSubtituloDetalhes(subtitulo){
    return Text(subtitulo, style: TextStyle(fontSize: 20),);
  }

  Widget _construirTextoDetalhes(texto){
    return Text(texto);
  }

  Widget _construirAppBar(){
    return AppBar(
        title: Text("Cozinhando em casa")
    );
  }



}