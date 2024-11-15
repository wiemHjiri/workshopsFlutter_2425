import 'package:box_office_sim2/entities/film.dart';
import 'package:flutter/material.dart';


class ItemGridview extends StatelessWidget {
  Film film;

   ItemGridview({super.key, required this.film});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset("assets/${film.image}"),
            Text(film.title)
          ],
        ),
      ),
    );
  }
}