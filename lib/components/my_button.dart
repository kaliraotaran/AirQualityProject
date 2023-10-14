import 'package:aqapplication/screens/formus.dart';
import 'package:aqapplication/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Homepage()));},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: kprimary,
          borderRadius: BorderRadius.circular(27),
        ),
        child:   Center(
          child: Text(
            "Sign In",
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 23,
              //fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
