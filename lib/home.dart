import 'package:box_office_sim2/entities/film.dart';
import 'package:box_office_sim2/items/film_card.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Film> films=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    films.add(Film(title: "House Of Dead",image: "HouseOfDead.jpg",description: "The House of the Dead est un jeu vidéo de tir au pistolet sorti sur borne d'arcade en 1996. Il est ensuite paru sur Saturn et PC en 1998. Le joueur, armé d'un pistolet, doit se frayer un chemin à travers une horde de zombies.", price: 100));
    films.add(Film(title: "The Grudge", image: "thegrudge.jpg",description: "The House of the Dead est un jeu vidéo de tir au pistolet sorti sur borne d'arcade en 1996. Il est ensuite paru sur Saturn et PC en 1998. Le joueur, armé d'un pistolet, doit se frayer un chemin à travers une horde de zombies.", price: 100));
    films.add(Film(title: "The Abyss", image: "theabyss.jpg",description: "The House of the Dead est un jeu vidéo de tir au pistolet sorti sur borne d'arcade en 1996. Il est ensuite paru sur Saturn et PC en 1998. Le joueur, armé d'un pistolet, doit se frayer un chemin à travers une horde de zombies.", price: 100));
    films.add(Film(title: "Ice Road", image: "iceroad.jpg",description: "The House of the Dead est un jeu vidéo de tir au pistolet sorti sur borne d'arcade en 1996. Il est ensuite paru sur Saturn et PC en 1998. Le joueur, armé d'un pistolet, doit se frayer un chemin à travers une horde de zombies.", price: 100));
   
  }
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: films.length,
        itemBuilder: (context,index){
            return FilmCard(
              film: Film(title: films[index].title, image: films[index].image, 
              description: films[index].description, price: films[index].price),
            );
        });      
  }
}