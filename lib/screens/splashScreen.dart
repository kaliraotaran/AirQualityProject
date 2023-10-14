import 'package:flutter/material.dart';
import 'package:aqapplication/login_page.dart';
import 'package:aqapplication/screens/formus.dart';
import 'package:aqapplication/screens/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'dart:ui';
// import 'package:flutter_feather_icons/flutter_feather_icons.dart';

Color tintColor = Colors.white;

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/bg.png'))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            height: 400,
            width: 420,
            child: Frosted(
                child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 150,
                  height: 150,
                
                  child: Image(image: AssetImage('assets/iii.png')),
                ),
                const SizedBox(
                  height: 15,
                ),
                signbtn(
                  bg: kprimary,
                  icon: PhosphorIcons.light.userCirclePlus,
                  text: 'Register',
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){Navigator.push(context, PageTransition(child: LoginPage(), type: PageTransitionType.fade));},
                  child: signbtn(
                    bg: kprimary,
                    icon: PhosphorIcons.light.signIn,
                    text: 'Sign-up',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: Homepage(),
                              type: PageTransitionType.fade));
                    },
                    child: Text(
                      'Continue Anyways',
                      style: GoogleFonts.openSans(
                          color: Colors.grey.shade300,
                          fontSize: 22,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: Divider(
                    color: Colors.grey.shade300,
                  ),
                )
              ],
            )),
          ),
        ],
      ),
    ));
  }
}

class signbtn extends StatelessWidget {
  const signbtn({
    super.key,
    required this.text,
    required this.bg,
    required this.icon,
  });
  final String text;
  final Color bg;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 50,
      decoration:
          BoxDecoration(color: bg, borderRadius: BorderRadius.circular(20)),
      child: Row(children: [
        const SizedBox(
          width: 20,
        ),
        Icon(
          icon,
          size: 30,
          color: Colors.white,
        ),
        const SizedBox(
          width: 60,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
        ),
      ]),
    );
  }
}

class Frosted extends StatelessWidget {
  const Frosted({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRect(
          clipBehavior: Clip.hardEdge,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 5.0),
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey.shade200.withOpacity(0.1)),
                child: child),
          )),
    );
  }
}
