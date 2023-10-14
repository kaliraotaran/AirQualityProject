import 'package:aqapplication/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Color ksecond = Color.fromRGBO(96, 108, 56, 0.576);
final Color kprimary = Color.fromRGBO(40, 54, 24, 1);

class Formz extends StatelessWidget {
  const Formz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: btmnav(selectedMenu: MenuState.formus),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text('Enter Complaint',
                    style: GoogleFonts.openSans(
                        fontSize: 40,
                        fontWeight: FontWeight.w300,
                        color: Color.fromRGBO(40, 54, 24, 1),
                        letterSpacing: 2)),
              ),
              labeltext(text: 'Name'),
              input(hint: 'Enter your Name'),
              labeltext(text: 'City'),
              input(hint: 'Enter your City'),
              labeltext(text: 'State'),
              input(hint: 'Enter your State'),
              labeltext(text: 'AddharCard No.'),
              input(hint: 'Enter your AddharCard No.'),
              labeltext(text: 'Complaint Description'),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
                child: SizedBox(
                  height: 300,
                  child: TextFormField(
                    maxLines: 70,
                    cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                        hintText:
                            'Enter your complaint and if there are any specific factory or Industry please mention them',
                        hintStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Color.fromRGBO(96, 108, 56, 0.576),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(40, 54, 24, 1),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      'Submit',
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class labeltext extends StatelessWidget {
  const labeltext({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 39.0, vertical: 4),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          text,
          style: GoogleFonts.openSans(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}

class input extends StatelessWidget {
  const input({
    super.key,
    required this.hint,
  });
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
      child: TextField(
        cursorColor: Colors.white,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.white),
            filled: true,
            fillColor: Color.fromRGBO(96, 108, 56, 0.576),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
