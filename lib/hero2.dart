import 'package:flutter/material.dart';


class hero_anime1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: "imagge",
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/farmer8.jpg")
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,right: 320),
            child: Text("Vegetables",
              style:  TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.black87,
              fontSize: 30,)),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text('Vegetables are parts of plants that are consumed by humans or other animals as food. The original meaning is still commonly used and is applied to plants collectively to refer to all edible plant matter, including the flowers, fruits, stems, leaves, roots, and seeds. An alternative definition of the term is applied somewhat arbitrarily, often by culinary and cultural tradition. It may exclude foods derived from some plants that are fruits, flowers, nuts, and cereal grains, but include savoury fruits such as tomatoes and courgettes, flowers such as broccoli, and seeds such as pulses.'
            ,textAlign: TextAlign.justify,
                style: const TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black87,
                fontSize: 16,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 380),
            child: Text(
              "In-Stock",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.green,
                fontSize: 25,
              ),
            ),
          ),])
    );
  }
}

class hero_anime2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: "title",
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/farmer1.jpg")
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,right: 390),
            child: Text("Fruits",
              style:  TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.black87,
              fontSize: 30,)),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text('Fruits are the means by which flowering plants (also known as angiosperms) disseminate their seeds.", "Fruits are the means by which flowering plants (also known as angiosperms) disseminate their seeds. Edible fruits in particular have long propagated using the movements of humans and animals in a symbiotic relationship that is the means for seed dispersal for the one group and nutrition for the other; in fact, humans and many animals have become dependent on fruits as a source of food.[1] Consequently, fruits account for a substantial fraction of the worlds agricultural output, and some (such as the apple and the pomegranate) have acquired extensive cultural and symbolic meanings.', textAlign: TextAlign.justify,
                style: const TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black87,
                fontSize: 16,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 380),
            child: Text(
              "In-Stock",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.green,
                fontSize: 25,
              ),
            ),
          ),])
    );
  }
}