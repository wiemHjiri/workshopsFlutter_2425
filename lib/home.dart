import 'package:box_office_sim2/film.dart';
import 'package:box_office_sim2/film_card.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Box Office'),
       
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FilmCard(film: Film(title: "House Of Dead",image: "HouseOfDead.jpg")),
            FilmCard(film: Film(title: "The Grudge", image: "thegrudge.jpg")),
            FilmCard(film: Film(title: "The Abyss", image: "theabyss.jpg")),
            FilmCard(film: Film(title: "Ice Road", image: "iceroad.jpg")),
            
            
          ],
        ),
      ),
    );
  }
}