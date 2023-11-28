import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Aderticement extends StatefulWidget {
  @override
  State<Aderticement> createState() => _AderticementState();
}

class _AderticementState extends State<Aderticement> {
  final List<String> images = [
    'https://c8.alamy.com/comp/B2KAF5/arabic-pepsi-drink-roadside-advertising-B2KAF5.jpg',
    "https://m.media-amazon.com/images/I/81t--IqNT1L._AC_UF894,1000_QL80_.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmXx7txKheuYeo23x7Ydlz_CwVy7UTA8uyVg&usqp=CAU",

    "https://www.shutterstock.com/image-photo/poznan-pol-feb-8-2023-260nw-2293010613.jpg",

    // 'assets/image3.jpg',
    // Add more image paths as needed
  ];

  int _current = 0;

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final double height = MediaQuery.of(context).size.height * 0.2;
        return Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: height,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  _current = index;
                  setState(() {});
                },
              ),
              items: images
                  .map((item) => Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14))),
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Image.network(
                              item,
                              fit: BoxFit.fill,
                              height: height,
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
            DotsIndicator(
              dotsCount: images.length, // Change this to the number of pages
              position: _current,

              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: images.asMap().entries.map((entry) {
            //     return GestureDetector(
            //       onTap: () => _controller.animateToPage(entry.key),
            //       child: Container(
            //         width: 8.0,
            //         height: 8.0,
            //         margin:
            //             EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            //         decoration: BoxDecoration(
            //             shape: BoxShape.circle,
            //             color: (Theme.of(context).brightness == Brightness.dark
            //                     ? Color.fromARGB(255, 17, 43, 101)
            //                     : Color.fromARGB(255, 109, 19, 19))
            //                 .withOpacity(_current == entry.key ? 0.9 : 0.4)),
            //       ),
            //     );
            //   }).toList(),
            // ),
          ],
        );
      },
    );
  }
}
