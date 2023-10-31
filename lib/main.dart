import 'package:flutter/material.dart';


void main() async {
  runApp(const MaterialApp(
    title: "Contador de Pessoas",
    home: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Text("Pessoas: 0", 
          style: TextStyle(color: Colors.blue),
        ),
        Text("Pode entrar", 
          style: TextStyle(
            color: Colors.blue, 
            fontStyle: FontStyle.italic,
            fontSize: 30.0
          ),
        )
      ],
    ),
  ));
}
