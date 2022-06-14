import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimeiroExercicio extends StatelessWidget {
  const PrimeiroExercicio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(right: 16.0, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Spacer(),
                Text(
                  'Primeiro Exercício',
                  style: GoogleFonts.amaticSc(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 60,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
            const Quadradinhos(
                color: Colors.red, color2: Colors.blue, color3: Colors.green),
            const Quadradinhos(
                color: Colors.amber,
                color2: Colors.pink,
                color3: Colors.purple),
            const Quadradinhos(
                color: Colors.teal,
                color2: Color.fromARGB(255, 87, 7, 192),
                color3: Colors.purple),
          ],
        ),
      ),
    );
  }
}

class Quadradinhos extends StatelessWidget {
  const Quadradinhos({
    Key? key,
    required this.color,
    required this.color2,
    required this.color3,
  }) : super(key: key);

  final Color color;
  final Color color2;
  final Color color3;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 100,
          width: 100,
          color: color,
        ),
        Container(
          height: 100,
          width: 100,
          color: color2,
        ),
        Container(
          height: 100,
          width: 100,
          color: color3,
        ),
      ],
    );
  }
}
