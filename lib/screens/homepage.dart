import 'package:aqapplication/bottomnav.dart';
import 'package:aqapplication/screens/formus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

const Color bg = Color.fromRGBO(254, 250, 224, 1);

const Color pillbg = Color.fromRGBO(96, 108, 56, 0.800);
const Color weatherbg = Color.fromRGBO(96, 108, 56, 0.442);

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: btmnav(
        selectedMenu: MenuState.home,
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70.0, right: 30, left: 30),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                      color: ksecond, borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                        child: Text(
                          'Current Air Index ',
                          style: GoogleFonts.openSans(
                              fontSize: 35, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 30, top: 50),
                        child: Text(
                          '150',
                          style: GoogleFonts.openSans(
                              fontSize: 60,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
                child: Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(96, 108, 56, 1),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: PhosphorIcon(
                          PhosphorIcons.light.cloudWarning,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                          child: Container(
                            width: 1.5,
                            height: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40)),
                          )),
                      Container(
                        child: PhosphorIcon(
                          PhosphorIcons.light.faceMask,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                          child: Container(
                            width: 1.5,
                            height: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40)),
                          )),
                      Container(
                        child: PhosphorIcon(
                          PhosphorIcons.light.factory,
                          size: 40,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              weather(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 350,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: OpenStreetMapSearchAndPick(
                      center: LatLong(31, 75),
                      locationPinText: '',
                      buttonHeight: 0,
                      buttonWidth: 0,
                      locationPinIconColor: pillbg,
                      buttonColor: pillbg,
                      buttonText: 'Set Current Location',
                      onPicked: (pickedData) {}),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class weather extends StatelessWidget {
  const weather({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
      child: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromRGBO(96, 108, 56, 0.442),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 14,
                  ),
                  pill(
                    classi: 'Humidity',
                    text: '5%',
                    icon: PhosphorIcons.light.waves,
                    bg: pillbg,
                    classtext: Colors.white,
                    iconcolor: Colors.white,
                    maintext: Colors.white,
                  ),
                  pill(
                    classi: 'Wind',
                    text: '2.7 km/s',
                    icon: PhosphorIcons.light.wind,
                    bg: pillbg,
                    classtext: Colors.white,
                    iconcolor: Colors.white,
                    maintext: Colors.white,
                  ),
                  pill(
                      classi: 'UV index',
                      text: '6',
                      icon: PhosphorIcons.light.sunDim,
                      bg: pillbg,
                      classtext: Colors.white,
                      iconcolor: Colors.white,
                      maintext: Colors.white),
                  pill(
                    classi: 'Temp.',
                    text: '30',
                    icon: PhosphorIcons.light.thermometerSimple,
                    bg: pillbg,
                    classtext: Colors.white,
                    iconcolor: Colors.white,
                    maintext: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          )),
    );
  }
}

class pill extends StatelessWidget {
  const pill({
    super.key,
    required this.classi,
    required this.text,
    required this.icon,
    required this.classtext,
    required this.bg,
    required this.maintext,
    required this.iconcolor,
  });
  final String classi;
  final String text;
  final IconData icon;
  final Color classtext;
  final Color bg;
  final Color maintext;
  final Color iconcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(30),
        //border: Border.none
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, bottom: 5, right: 10),
                child: Text(
                  classi,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 20),
                child: Text(
                  text,
                  style: TextStyle(
                    color: maintext,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Icon(
              icon,
              color: iconcolor,
              size: 38,
              weight: 1,
            ),
          ),
        ],
      ),
    );
  }
}
