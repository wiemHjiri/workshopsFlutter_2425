import 'package:box_office_sim2/entities/film.dart';
import 'package:box_office_sim2/items/item_gridview.dart';
import 'package:flutter/material.dart';



class FilmsGridview extends StatefulWidget {
  const FilmsGridview({super.key});

  @override
  State<FilmsGridview> createState() => _FilmsGridviewState();
}

class _FilmsGridviewState extends State<FilmsGridview> {

  List<Film> films=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    films.add(Film(title: "House Of Dead",image: "HouseOfDead.jpg",description: "The House of the Dead est un jeu vidéo de tir au pistolet sorti sur borne d'arcade en 1996. Il est ensuite paru sur Saturn et PC en 1998. Le joueur, armé d'un pistolet, doit se frayer un chemin à travers une horde de zombies.", price: 100));
    films.add(Film(title: "The Grudge", image: "thegrudge.jpg",description: "The House of the Dead est un jeu vidéo de tir au pistolet sorti sur borne d'arcade en 1996. Il est ensuite paru sur Saturn et PC en 1998. Le joueur, armé d'un pistolet, doit se frayer un chemin à travers une horde de zombies.", price: 100));
    films.add(Film(title: "The Abyss", image: "theabyss.jpg",description: "The House of the Dead est un jeu vidéo de tir au pistolet sorti sur borne d'arcade en 1996. Il est ensuite paru sur Saturn et PC en 1998. Le joueur, armé d'un pistolet, doit se frayer un chemin à travers une horde de zombies.", price: 100));
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
          itemCount: films.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            mainAxisExtent: 155
            ), 
          itemBuilder: (context,index){
            return ItemGridview(film: films[index]);
          })
    );
  }
}