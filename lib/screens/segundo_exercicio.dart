import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SegundoExercicio extends StatelessWidget {
  const SegundoExercicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
        backgroundColor: Color.fromARGB(178, 115, 28, 255),
        elevation: 0,
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: ListView(
          children: const [
            Task(title: 'Andar de bike'),
            Task(title: 'Programação'),
            Task(title: 'Cozinhar'),
            Task(title: 'Natação'),
            Task(title: 'Jogar LOL'),
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
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24, left: 8, right: 8),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 150,
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 230, 216, 216),
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
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                      )),
                  height: 100,
                  width: 100,
                ),
                Text(
                  title,
                  style: GoogleFonts.alegreya(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 104, 166, 216)),
                ),
                ElevatedButton(
                    onPressed: () {}, child: const Icon(Icons.arrow_drop_up))
              ],
            ),
          )
        ],
      ),
    );
  }
}
