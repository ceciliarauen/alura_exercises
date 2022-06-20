import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SegundoExercicio extends StatelessWidget {
  const SegundoExercicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(234, 204, 238, 247),
      appBar: AppBar(
        title: const Text(
          'Tarefas',
          style: TextStyle(fontSize: 32),
        ),
        backgroundColor: const Color.fromARGB(181, 89, 223, 247),
        elevation: 0,
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: ListView(
          children: const [
            Task(
              title: 'Andar de bike',
              image: 'assets/images/bike.jpg',
            ),
            Task(title: 'Programação', image: 'assets/images/programming.jpg'),
            Task(title: 'Cozinhar', image: 'assets/images/cooking.jpg'),
            Task(title: 'Natação', image: 'assets/images/swim.jpg'),
            Task(title: 'Jogar LOL', image: 'assets/images/game.jpg'),
          ],
        ),
      ),
    );
  }
}

class Task extends StatelessWidget {
  const Task({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24, left: 8, right: 8),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(181, 5, 139, 163),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 140,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                  )),
                  height: 100,
                  width: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  title,
                  style: GoogleFonts.alegreya(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.arrow_drop_up),
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 245, 112, 112),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
