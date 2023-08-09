import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse("https://www.xn--altnyayla-xpb.bel.tr/");
    return InkWell(
      onTap: () {
        launchUrl(url);
      },
      onHover: (hovering) {
        setState(() {
          _isHovering = hovering;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 130),
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.white,
          _isHovering
              ? const Color.fromARGB(255, 212, 205, 182)
              : Colors.grey.shade200
        ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
        child: Center(
            child: AnimatedOpacity(
          curve: Curves.easeIn,
          duration: const Duration(milliseconds: 130),
          opacity: _isHovering == true ? 1 : 0.4,
          child: Text(
            "studio 693 dükkan",
            style: GoogleFonts.ptSans(shadows: <Shadow>[
              const Shadow(
                offset: Offset(0.0, 3.0),
                blurRadius: 5.0,
                color: Colors.white,
              )
            ], fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        )),
      ),
    );
  }
}
