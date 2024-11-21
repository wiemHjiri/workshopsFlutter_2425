import 'package:box_office_sim2/entities/film.dart';
import 'package:box_office_sim2/film_details.dart';
import 'package:box_office_sim2/films_gridview.dart';
import 'package:box_office_sim2/home.dart';
import 'package:box_office_sim2/navigation_bottom.dart';
import 'package:box_office_sim2/signin.dart';
import 'package:box_office_sim2/signup.dart';
import 'package:box_office_sim2/tabbar_navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyFirst Flutter App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    //  home: FilmDetails(film: Film(title: "House Of Dead", image: "HouseOfDead.jpg",description: "The House of the Dead est un jeu vidéo de tir au pistolet sorti sur borne d'arcade en 1996. Il est ensuite paru sur Saturn et PC en 1998. Le joueur, armé d'un pistolet, doit se frayer un chemin à travers une horde de zombies.",price: 100))
     //   home: const Signin()
     routes: {
      '/': (context) => const Signin(),
      '/signup': (context) => const Signup(),
      '/home': (context) => const NavigationBottom(),
      '/details':(context) =>  FilmDetails(),
      '/tabbar' : (context) => const TabBarNavigation()
  }
    );
  }
}
