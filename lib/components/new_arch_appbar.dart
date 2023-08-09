import 'package:flutter/material.dart';
import 'package:flutter_web_app/pages/new_arch_page.dart';
import 'package:flutter_web_app/pages/welcome_page.dart';
import 'package:google_fonts/google_fonts.dart';

bool isSelected1 = true;
bool isSelected2 = false;
bool isSelected3 = false;
//Arch page pageview ile yapılandır.

class NewArchAppBar extends StatefulWidget {
  const NewArchAppBar({super.key});

  @override
  State<NewArchAppBar> createState() => _NewArchAppBarState();
}

class _NewArchAppBarState extends State<NewArchAppBar> {
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
          InkWell(
            onTap: () {
              controller.animateToPage(0,
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.easeInOutCirc);
              setState(() {
                isSelected1 = true;
                isSelected2 = false;
                isSelected3 = false;
              });
            },
            child: Text(
              "hakkımızda",
              style: GoogleFonts.ptSans(
                  fontSize: 22,
                  fontWeight:
                      isSelected1 == true ? FontWeight.bold : FontWeight.w100),
            ),
          ),
          const SizedBox(width: 15),
          InkWell(
            onTap: () {
              controller.animateToPage(1,
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.easeInOutCirc);
              setState(() {
                isSelected1 = false;
                isSelected2 = true;
                isSelected3 = false;
              });
            },
            child: Text(
              "projeler",
              style: GoogleFonts.ptSans(
                  fontSize: 22,
                  fontWeight:
                      isSelected2 == true ? FontWeight.bold : FontWeight.w100),
            ),
          ),
          const SizedBox(width: 15),
          InkWell(
            onTap: () {
              controller.animateToPage(2,
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.easeInOutCirc);
              setState(() {
                isSelected1 = false;
                isSelected2 = false;
                isSelected3 = true;
              });
            },
            child: Text(
              "iletişim",
              style: GoogleFonts.ptSans(
                  fontSize: 22,
                  fontWeight:
                      isSelected3 == true ? FontWeight.bold : FontWeight.w100),
            ),
          )
        ],
      ),
    );
  }
}
