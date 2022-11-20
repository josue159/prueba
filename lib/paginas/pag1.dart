import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reto06/paginas/ejercicio2.dart';
import 'package:reto06/paginas/paginacolores.dart';

class Pag1 extends StatelessWidget {
  const Pag1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: <Widget>[
          SizedBox(
            width: 50,
            child: Image.asset("assets/imagenperfil.png"),
          ),
        ],
        title: Text(
          'Travel Agencysrr',
          style: GoogleFonts.sourceSansPro(),

          //style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonWidget(
              name: 'Colores',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Paginacolores()),
                );
              },
            ),
            buttonWidget(
              name: 'Colores2',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Colores2()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  MaterialButton buttonWidget({String? name, Function()? onPressed}) {
    return MaterialButton(
      height: 50,
      minWidth: double.infinity,
      elevation: 1,
      color: const Color.fromARGB(255, 6, 59, 103),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        name!,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      onPressed: () => onPressed!(),
    );
  }
}
