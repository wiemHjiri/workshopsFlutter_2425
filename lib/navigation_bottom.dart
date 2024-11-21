import 'package:box_office_sim2/films_gridview.dart';
import 'package:box_office_sim2/home.dart';
import 'package:flutter/material.dart';


class NavigationBottom extends StatefulWidget {
  const NavigationBottom({super.key});

  @override
  State<NavigationBottom> createState() => _NavigationBottomState();
}

class _NavigationBottomState extends State<NavigationBottom> {

  List<Widget> interfaces = [const Home(), const FilmsGridview()];
  late int current_index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: Drawer(
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
               Navigator.pushNamed(context, "/tabbar");
              },
              leading: const Icon(Icons.download),
              title: const Text(" TabBar Navigation"),
            )
          ],
        ),
      ),
      body: interfaces[current_index],
      bottomNavigationBar: BottomNavigationBar(
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Films"),
        ],
        currentIndex: current_index,
        onTap: (value) {
          setState(() {
            current_index =value;
          });
        },        
        ),

    );
  }
}
