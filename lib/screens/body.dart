import 'package:alura_exercises/screens/primeiro_exercicio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 16.0,
          ),
          child: Image.asset(
            'assets/images/home_page_img.jpg',
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          width: 300,
          height: 400,
          decoration: BoxDecoration(
              color: const Color.fromARGB(218, 153, 202, 224),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'DEV</Flutter>',
                style: GoogleFonts.permanentMarker(
                    color: Colors.white, fontSize: 32),
              ),
              const SizedBox(
                height: 20,
              ),
              ExerciseButton(
                title: 'Primeiro Exercicio',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrimeiroExercicio(),
                    ),
                  );
                },
              ),
              ExerciseButton(
                title: 'Segundo Exercicio',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrimeiroExercicio(),
                    ),
                  );
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}

class ExerciseButton extends StatelessWidget {
  const ExerciseButton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: press,
            child: Text(
              title,
            ),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: const Color.fromARGB(255, 1, 38, 102),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Icon(
            Icons.check,
            color: Color.fromARGB(255, 1, 66, 92),
            size: 32,
          )
        ],
      ),
    );
  }
}
