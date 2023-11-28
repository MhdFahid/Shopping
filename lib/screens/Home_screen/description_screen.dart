import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionScreen extends StatelessWidget {
  DescriptionScreen({required this.imageaddress, super.key});
  final String imageaddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.share),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(FontAwesomeIcons.whatsapp),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.phone),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/$imageaddress"),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Property Title",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Discover modern luxury in our stunning high-rise, nestled in the heart of the city's vibrant skyline.  nestled in the heart  city's vibrant skyline again",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Price:25,000",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w800, fontSize: 20),
                      ),
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.location_on),
                          label: Text(
                            "View on Map",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
