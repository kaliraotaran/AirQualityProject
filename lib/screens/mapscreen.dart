import 'package:aqapplication/bottomnav.dart';
import 'package:aqapplication/screens/formus.dart';
import 'package:aqapplication/screens/homepage.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

class Mapz extends StatefulWidget {
  const Mapz({Key? key}) : super(key: key);

  @override
  State<Mapz> createState() => _MapzState();
}

class _MapzState extends State<Mapz> {
  State<Mapz> createState() => _MapzState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: btmnav(
        selectedMenu: MenuState.map,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: OpenStreetMapSearchAndPick(
                  center: LatLong(23, 89),
                  locationPinText: '',
                  locationPinIconColor: pillbg,
                  buttonColor: pillbg,
                  buttonText: 'Set Current Location',
                  onPicked: (pickedData) {
                    print(pickedData.latLong.latitude);
                    print(pickedData.latLong.longitude);
                    print(pickedData.address);
                  }),
            ),
            Container(
              height: 460,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 90.0),
                  child: Column(children: [
                    Text(
                      'Hazards Nearby',
                      style: GoogleFonts.openSans(
                          color: kprimary,
                          fontSize: 40,
                          fontWeight: FontWeight.w500),
                    ),
                    const hazardcard(
                      air: 'Air Index : 140',
                      city: 'Khanna Tehsil',
                      warn: 'Warning Level : Medium',
                    ),
                    const hazardcard(
                      air: 'Air Index : 80',
                      city: 'Chandigarh',
                      warn: 'Warning Level : Low',
                    ),
                    const hazardcard(
                      air: 'Air Index : 180',
                      city: 'New Dehli',
                      warn: 'Warning Level : High',
                    ),
                    const hazardcard(
                      air: 'Air Index : 100',
                      city: 'Mohali',
                      warn: 'Warning Level : Medium',
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class hazardcard extends StatelessWidget {
  const hazardcard({
    super.key,
    required this.city,
    required this.air,
    required this.warn,
  });
  final String city;
  final String air;
  final String warn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, left: 10, right: 10),
      child: Container(
        width: double.infinity,
        height: 110,
        decoration: BoxDecoration(
            color: pillbg, borderRadius: BorderRadius.circular(40)),
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Text(
              city,
              style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2),
            ),
            SizedBox(
              height: 10,
            ),
            Text(air,
                style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2)),
            SizedBox(
              height: 10,
            ),
            Text(warn,
                style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 2))
          ],
        ),
      ),
    );
  }
}
