import 'package:box_office_sim2/entities/film.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FilmDetails extends StatefulWidget {

  Film film;

  FilmDetails({super.key,required this.film});

  @override
  State<FilmDetails> createState() => _FilmDetailsState();
}

class _FilmDetailsState extends State<FilmDetails> {
  double rate=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.film.title, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset("assets/${widget.film.image}"),
            const SizedBox(height: 20),
            Text(widget.film.description!,style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            Text("${widget.film.price} TND", style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 40)),
            const SizedBox(height: 50),
            Text("$rate"),
            RatingBar.builder(
   initialRating: 3,
   minRating: 1,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
   itemBuilder: (context, _) => const Icon(
     Icons.star,
     color: Colors.amber,
   ),
   onRatingUpdate: (rating) {
    setState(() {
      rate=rating;
    });
    //rate=rating;
     print(rate);
   },
),
            Container(
              width: 150,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white
                ),
                onPressed: (){}, 
                child: const Row(
                  children: [
                    Icon(Icons.shopping_basket,color: Colors.white),
                    SizedBox(width: 10),
                    Text("Acheter",style:TextStyle(fontSize: 16))
                  ],
                )),
            )
          ],
        ),
      ),
    );
  }
}