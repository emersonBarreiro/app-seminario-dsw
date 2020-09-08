import 'dart:math';

import 'package:flutter/material.dart';

void main(){

  runApp(new MaterialApp(
    //a linha abaixo define se mostra ou não a faixa debug
    debugShowCheckedModeBanner: false,

    home: HomeStateful(),
  ));
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  List _frases = [
    "frase 1",
    "Frase 2",
    "Frase 3",
    "Frase 4"
  ];
  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase (){

    int _numeroAleatorio = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada =  _frases[_numeroAleatorio];
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
          /*decoration: BoxDecoration(
              border: Border.all(width:3,  color: Colors.amber)
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/logo.png'),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic
                ),
              ),
              RaisedButton(
                onPressed: (){
                  _gerarFrase();
                },
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}




