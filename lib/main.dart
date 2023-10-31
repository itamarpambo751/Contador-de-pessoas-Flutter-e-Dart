import 'package:flutter/material.dart';

void main() async {
  //Visto que Home é statefulWidget, podemos dizer q o 
  //App não busca dados em tempo de execção sendo que 
  //os valores em home são dinâmicos
  runApp(const MaterialApp(
    title: "Contador de Pessoas",
    home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _peoples = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget> [
        Image.asset(
          "images/restaurant.webp",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text("Pessoas: $_peoples", 
              style: const TextStyle(color: Colors.blue),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _peoples+=1;
                      });
                    },
                    child: const Text("Adicionar"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_peoples > 0) {
                        setState(() {
                          _peoples+=-1;
                        });
                      }
                    },
                    child: const Text("Remover"),
                  ),
                ),
              ],
            ),
            const Text("Pode entrar", 
              style: TextStyle(
                color: Colors.blue, 
                fontStyle: FontStyle.italic,
                fontSize: 30.0
              ),
            )
          ],
        ),
      ],
    );
  }
}
