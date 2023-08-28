import 'package:flutter/material.dart';
import 'package:flutter_web_app/pages/new_3d_page.dart';
import 'package:flutter_web_app/pages/new_arch_page.dart';
import 'package:flutter_web_app/pages/welcome_page.dart';
import 'package:google_fonts/google_fonts.dart';

bool _isSelected1 = true;
bool _isSelected2 = false;
bool _isSelected3 = false;
//Arch page pageview ile yapılandır.

class New3DAppBar extends StatefulWidget {
  const New3DAppBar({super.key});

  @override
  State<New3DAppBar> createState() => _New3DAppBarState();
}

class _New3DAppBarState extends State<New3DAppBar> {
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
              Text("3d baskı",
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
              controller3D.animateToPage(0,
                  duration: const Duration(milliseconds: 1500),
                  curve: Curves.easeInOutCirc);
              setState(() {
                _isSelected1 = true;
                _isSelected2 = false;
                _isSelected3 = false;
              });
            },
            child: Text(
              "hakkımızda",
              style: GoogleFonts.ptSans(
                  fontSize: 22,
                  fontWeight:
                      _isSelected1 == true ? FontWeight.bold : FontWeight.w100),
            ),
          ),
          const SizedBox(width: 15),
          InkWell(
            onTap: () {
              controller3D.animateToPage(1,
                  duration: const Duration(milliseconds: 1500),
                  curve: Curves.easeInOutCirc);
              setState(() {
                _isSelected1 = false;
                _isSelected2 = true;
                _isSelected3 = false;
              });
            },
            child: Text(
              "projeler",
              style: GoogleFonts.ptSans(
                  fontSize: 22,
                  fontWeight:
                      _isSelected2 == true ? FontWeight.bold : FontWeight.w100),
            ),
          ),
          const SizedBox(width: 15),
          InkWell(
            onTap: () {
              controller3D.animateToPage(2,
                  duration: const Duration(milliseconds: 1500),
                  curve: Curves.easeInOutCirc);
              setState(() {
                _isSelected1 = false;
                _isSelected2 = false;
                _isSelected3 = true;
              });
            },
            child: Text(
              "iletişim",
              style: GoogleFonts.ptSans(
                  fontSize: 22,
                  fontWeight:
                      _isSelected3 == true ? FontWeight.bold : FontWeight.w100),
            ),
          )
        ],
      ),
    );
  }
}
