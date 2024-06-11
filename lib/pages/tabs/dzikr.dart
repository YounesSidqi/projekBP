import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app_flutter/pages/after_shalat.dart';
import 'package:quran_app_flutter/pages/evening_screen.dart';
import 'package:quran_app_flutter/pages/morning_screen.dart';

class TabDzikr extends StatelessWidget {
  const TabDzikr({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, MorningDzikr.routeName);
          },
          child: Container(
            alignment: Alignment.center,
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color.fromARGB(255, 6, 197, 236), Color.fromARGB(255, 36, 122, 220)])),
            child: Text(
              "Morning Dzikr",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, EveningDzikr.routeName);
          },
          child: Container(
            alignment: Alignment.center,
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xff8ecae6), Color(0xff219ebc)])),
            child: Text("Evening Dzikr",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, AfterShalat.routeName);
          },
          child: Container(
            alignment: Alignment.center,
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color.fromARGB(255, 4, 107, 232), Color.fromARGB(255, 33, 174, 199)])),
            child: Text(
              "Dzikr After Shalat",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
