import 'package:flutter/material.dart';
import 'dart:math' as math;

class Colores2 extends StatefulWidget {
  const Colores2({super.key});

  @override
  State<Colores2> createState() => _Colores2State();
}

class _Colores2State extends State<Colores2> {
  Color _backgroundColor1 =
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  Color _backgroundColor2 = Color.fromARGB(255, 240, 31, 31);
  Color _backgroundColor3 =
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  Color _backgroundColor4 =
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  int i = 0;

  String _imagen =
      "https://static.vecteezy.com/system/resources/previews/001/188/753/original/fireman-helmet-png.png";

  void cambiarcolorestotales1(numerocolor) {
    if (numerocolor == 1) {
      setState(() {
        _backgroundColor1 = const Color.fromARGB(255, 63, 236, 24);
        _backgroundColor2 =
            Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0);
        _backgroundColor3 =
            Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0);
        _backgroundColor4 =
            Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0);
        _imagen =
            "https://cdn.pixabay.com/photo/2015/10/22/17/45/leaf-1001679_960_720.jpg";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buttonWidget(
                name: 'Colores2',
                color: _backgroundColor1,
                onPressed: () {},
              ),
              buttonWidget(
                name: 'Colores3',
                color: _backgroundColor2,
                onPressed: () {
                  cambiarcolorestotales1(1);
                },
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("$_imagen"),
                fit: BoxFit.cover,
              ),
            ),
            child: MaterialButton(
              height: 250,
              minWidth: 350,
              elevation: 1,
              onPressed: () {},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buttonWidget(
                name: 'Colores5',
                color: _backgroundColor3,
                onPressed: () {},
              ),
              buttonWidget(
                name: 'Colores6',
                color: _backgroundColor4,
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  MaterialButton buttonWidget(
      {String? name, Color? color, Function()? onPressed}) {
    return MaterialButton(
      height: 50,
      minWidth: 50,
      elevation: 1,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        name!,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      onPressed: () => onPressed!(),
    );
  }
}
