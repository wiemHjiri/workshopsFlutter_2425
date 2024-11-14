import 'package:box_office_sim2/film.dart';
import 'package:flutter/material.dart';

class FilmCard extends StatelessWidget {

  Film film;

  FilmCard({super.key, required this.film});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: 
           Column(
            children: [
              Image.asset("assets/${film.image}", width: double.infinity,height: 200,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(film.title),
                    const Icon(Icons.star, color: Colors.amber, size: 30)
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}