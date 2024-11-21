import 'package:box_office_sim2/films_gridview.dart';
import 'package:box_office_sim2/home.dart';
import 'package:flutter/material.dart';


class TabBarNavigation extends StatefulWidget {
  const TabBarNavigation({super.key});

  @override
  State<TabBarNavigation> createState() => _TabBarNavigationState();
}

class _TabBarNavigationState extends State<TabBarNavigation> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home",),
              Tab(icon: Icon(Icons.bookmark), text: "Bookmark"),
            ]
        )
        ),drawer: Drawer(
          child: Column(
            children: [
              AppBar(
                title: const Text("Films Esprit"),
                automaticallyImplyLeading: false,
              ),
              ListTile(
                onTap: () {
                 Navigator.pushNamed(context, "/signup");
                },
                leading: const Icon(Icons.edit),
                title: const Text("modofier profil "),
              ),
              ListTile(
                onTap: () {
                 Navigator.pushNamed(context, "/home");
                },
                leading: const Icon(Icons.download),
                title: const Text(" Bottom Navigation"),
              )
            ],
          ),
        ),
        body: const TabBarView(children: [Home(), FilmsGridview()])
      ),
    );

  }
}