import 'package:aqapplication/screens/formus.dart';
import 'package:aqapplication/screens/homepage.dart';
import 'package:aqapplication/screens/mapscreen.dart';
import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

enum MenuState { home, map, setting, formus }

class btmnav extends StatelessWidget {
  const btmnav({super.key, required this.selectedMenu});
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color isActiveIconColor = Color.fromARGB(255, 255, 255, 255);
    final Color inactive = Color.fromRGBO(101, 115, 52, 0.917);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xffdadada).withOpacity(0.15)),
        ],
        color: kprimary,
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Homepage(), type: PageTransitionType.fade));
                },
                icon: Icon(
                  PhosphorIcons.light.houseSimple,
                  color: MenuState.home == selectedMenu
                      ? isActiveIconColor
                      : inactive,
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Mapz(), type: PageTransitionType.fade));
                },
                icon: Icon(
                  PhosphorIcons.light.mapTrifold,
                  color: MenuState.map == selectedMenu
                      ? isActiveIconColor
                      : inactive,
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Formz(), type: PageTransitionType.fade));
                },
                icon: Icon(
                  PhosphorIcons.light.fileArrowUp,
                  color: MenuState.formus == selectedMenu
                      ? isActiveIconColor
                      : inactive,
                ))
          ],
        ),
      ),
    );
  }
}
