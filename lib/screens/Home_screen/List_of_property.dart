import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

class List_property_ui extends StatelessWidget {
  List_property_ui({super.key, required this.imageaddress});

  String imageaddress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        // height: 220,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 60, 60, 60)),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            color: Colors.white),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              child: Container(
                height: 140,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/$imageaddress",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "25000 Riyaal",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          openWhatsApp(9656832396);
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.green,
                          // size: 30,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            shareLink222(
                                "Hi there How r u , hope u r doing good");
                          },
                          icon: const Icon(
                            Icons.share,
                            color: Colors.green,
                          )),
                      IconButton(
                          onPressed: () {
                            launch("tel://9656832396");
                          },
                          icon: const Icon(
                            Icons.phone,
                            color: Colors.green,
                          ))
                    ],
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Category"),
                    Text(
                      "Building",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Furnishing"),
                    Text(
                      "Fully Furnished",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("City"),
                    Text(
                      "AL Hilal",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

class List_property_ui_HighLigths extends StatelessWidget {
  List_property_ui_HighLigths(
      {required this.offertext, required this.imageaddress, super.key});
  final String offertext;

  String imageaddress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // height: 220,
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: const BoxDecoration(
          // border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Color.fromARGB(255, 231, 231, 231),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              child: Container(
                height: 140,
                width: MediaQuery.of(context).size.width * 0.6,
                child: Image.asset(
                  "assets/images/$imageaddress",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            // const Padding(
            //   padding: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text("25000 RS"),
            //       FaIcon(
            //         FontAwesomeIcons.whatsapp,
            //         color: Colors.green,
            //         // size: 30,
            //       ),
            //       Icon(
            //         Icons.share,
            //         color: Colors.green,
            //       ),
            //       Icon(
            //         Icons.phone,
            //         color: Colors.green,
            //       ),
            //     ],
            //   ),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "  Building  ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "  Fully Furnished  ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "  AL Hilal",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  offertext,
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w800),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

void openWhatsApp(mobilenum) async {
  // Use the 'whatsapp://send' URL scheme to open WhatsApp
  String url = 'whatsapp://send?phone=$mobilenum';

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

shareLink222(var link) {
  Share.share("$link ",
      subject: 'Check out this link',
      sharePositionOrigin: const Rect.fromLTWH(0, 0, 1, 1));
}
