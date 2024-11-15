class Film {
  String title;
  String image;
  String? description;
  int? price;

  Film( {
   required this.title ,
   required this.image,
   this.description,
   this.price,
  });

}