import 'package:flutter/material.dart';

class ContainerWithCircularBorder extends StatelessWidget {
  final int index;

  ContainerWithCircularBorder({required this.index});
  final List<Color> colors = [
    Color.fromARGB(255, 255, 255, 255),
    Color.fromARGB(255, 194, 195, 196),
    Colors.lightGreen,
    Color.fromARGB(255, 181, 60, 113),
    Color.fromARGB(255, 197, 169, 114),
    Color.fromARGB(255, 143, 210, 216),
    Color.fromARGB(255, 173, 166, 238),
    const Color.fromARGB(255, 88, 178, 219),
    Colors.lightGreenAccent,
    Color.fromARGB(255, 161, 72, 72),
  ];
  List<String> icons = [
    "villa.png",
    "apartment.png",
    "bandt.png",
    "villa.png",
    "apartment.png",
    "bandt.png",
    "villa.png",
    "apartment.png",
    "bandt.png",
    "apartment.png"
  ];
  List<String> names = [
    "villa",
    "Apartment",
    "Building And Tower",
    "villa",
    "Apartment",
    "Building And Tower",
    "villa",
    "Apartment",
    "Building And Tower",
    "villa",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: colors[index % colors.length],
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: const Color.fromARGB(255, 226, 226, 226),
          width: 2.0,
        ),
        // image: DecorationImage(
        //   image: AssetImage(
        //       'assets/images/villa.jpeg'), // Replace with your image path
        //   fit: BoxFit.fill,
        // ),
      ),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
              child: Image.asset(
                "assets/images/${icons[index]}",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${names[index]}',
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}

class Land extends StatelessWidget {
  final int index;

  Land({required this.index});
  final List<Color> colors = [
    Color.fromARGB(255, 255, 255, 255),
    const Color.fromARGB(255, 194, 221, 234),
    const Color.fromARGB(255, 217, 248, 181),
  ];
  List<String> icons = [
    "comland.png",
    "indland.png",
    "res.png",
  ];
  List<String> names = [
    "commertial Land",
    "Industrial Land",
    "Residential Land",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: colors[index % colors.length],
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: const Color.fromARGB(255, 226, 226, 226),
          width: 2.0,
        ),
        // image: DecorationImage(
        //   image: AssetImage(
        //       'assets/images/villa.jpeg'), // Replace with your image path
        //   fit: BoxFit.fill,
        // ),
      ),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
              child: Image.asset(
                "assets/images/${icons[index]}",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${names[index]}',
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}
