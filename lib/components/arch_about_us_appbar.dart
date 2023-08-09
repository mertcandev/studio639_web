import 'package:flutter/material.dart';
import 'package:flutter_web_app/pages/arch_projects_page.dart';
import 'package:flutter_web_app/pages/contact_us.dart';
import 'package:flutter_web_app/pages/welcome_page.dart';
import 'package:google_fonts/google_fonts.dart';

//Arch page pageview ile yapılandır.

class ArchAboutUsAppBar extends StatefulWidget {
  const ArchAboutUsAppBar({super.key});

  @override
  State<ArchAboutUsAppBar> createState() => _ArchAboutUsAppBarState();
}

class _ArchAboutUsAppBarState extends State<ArchAboutUsAppBar> {
  @override
  Widget build(BuildContext context) {
    const FontWeight fontWeight = FontWeight.w500;

    return Container(
      padding: const EdgeInsets.only(left: 200, right: 240),
      width: double.infinity,
      height: 60,
      decoration:
          BoxDecoration(color: Colors.grey.withOpacity(0.15), boxShadow: [
        BoxShadow(
            color: Colors.grey.shade200,
            offset: const Offset(0, -3),
            spreadRadius: 3)
      ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const WelcomePage()));
                },
                child: Text(
                  "studio 693",
                  style: GoogleFonts.ptSans(
                      fontSize: 36,
                      fontWeight: fontWeight,
                      textBaseline: TextBaseline.alphabetic),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text("|",
                  style: GoogleFonts.ptSans(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey)),
              const SizedBox(width: 10),
              Text("mimarlık",
                  textAlign: TextAlign.end,
                  style: GoogleFonts.ptSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey)),
            ],
          ),
          const Spacer(),
          Text(
            "hakkımızda",
            style:
                GoogleFonts.ptSans(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 15),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => const ArchProjectsPage()));
            },
            child: Text(
              "projeler",
              style:
                  GoogleFonts.ptSans(fontSize: 22, fontWeight: FontWeight.w100),
            ),
          ),
          const SizedBox(width: 15),
          Text(
            "blog",
            style:
                GoogleFonts.ptSans(fontSize: 22, fontWeight: FontWeight.w100),
          ),
          const SizedBox(width: 15),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => const ContactUs()));
            },
            child: Text(
              "iletişim",
              style:
                  GoogleFonts.ptSans(fontSize: 22, fontWeight: FontWeight.w100),
            ),
          )
        ],
      ),
    );
  }
}
