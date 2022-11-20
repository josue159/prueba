import 'package:flutter/material.dart';

class Paginacolores extends StatefulWidget {
  const Paginacolores({super.key});

  @override
  State<Paginacolores> createState() => _PaginacoloresState();
}

class _PaginacoloresState extends State<Paginacolores> {
  //final player = AudioPlayer();

  Color _backgroundColor = const Color(0xFF111111);
  bool click = true;
  int i = 0;
  @override
  void cambiarcolor(numero) {
    if (numero == 1) {
      setState(() {
        _backgroundColor = const Color.fromARGB(255, 37, 103, 6);
      });
    } else {
      if (numero == 2) {
        setState(() {
          _backgroundColor = const Color.fromARGB(255, 6, 59, 103);
        });
      } else {
        if (numero == 3) {
          setState(() {
            _backgroundColor = const Color.fromARGB(255, 219, 39, 7);
          });
        }
      }
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: const Text("Pagina Uno"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Row(
        children: [
          MaterialButton(
            height: 50,
            minWidth: 50,
            color: const Color.fromARGB(255, 6, 59, 103),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              cambiarcolor(2);
              //final player = AudioPlayer();
              //player.play('azul.mp3');
              //player.play(AssetSource('assets/azul.mp3'));
            },
          ),
          MaterialButton(
            height: 50,
            minWidth: 50,
            color: const Color.fromARGB(255, 37, 103, 6),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              cambiarcolor(1);
            },
          ),
          MaterialButton(
            height: 50,
            minWidth: 50,
            color: const Color.fromARGB(255, 219, 39, 7),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              cambiarcolor(3);
            },
          ),
        ],
      ),
    );
  }
}
