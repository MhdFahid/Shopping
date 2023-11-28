import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/Home_screen/Home_screen.dart';

class MobileLoginScreen extends StatefulWidget {
  const MobileLoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MobileLoginScreen> createState() => _MobileLoginScreenState();
}

class _MobileLoginScreenState extends State<MobileLoginScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final sSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff062925),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SizedBox(height: MediaQuery.of(context).size.width * 0.04),
          SizedBox(
            // height: MediaQuery.of(context).size.width * 0.2,
            child: Image.asset(
              "assets/images/splash.png",

              // height: 200,
            ),
          ),
          Container(
            color: const Color(0xff062925),
            height: 250,
            child: TextLiquidFill(
              waveColor: Colors.white,
              boxBackgroundColor: const Color(0xff062925),
              textStyle: GoogleFonts.poppins(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
              boxHeight: sSize.width < 450
                  ? MediaQuery.of(context).size.height * 0.2
                  : MediaQuery.of(context).size.height * 0.1,
              text: 'ALDAR',
            ),
          ),
        ],
      ),
    );
  }
}
