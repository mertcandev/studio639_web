import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/bottom_bar.dart';

final Uri instaLink = Uri.parse("https://www.instagram.com/studio.693/");

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> _makePhoneCall(String phoneNumber) async {
      final Uri launchUri = Uri(
        scheme: 'tel',
        path: phoneNumber,
      );
      await launchUrl(launchUri);
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: Container(
          height: 300,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade100,
              boxShadow: [
                const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, -5),
                    blurRadius: 5,
                    spreadRadius: 5),
                BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(5, 5),
                    blurRadius: 5,
                    spreadRadius: 5)
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "adres",
                style: GoogleFonts.ptSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              InkWell(
                onTap: () {
                  launchUrl(Uri.parse("https://goo.gl/maps/HPQGjC6vMdcEy1ve9"));
                },
                child: Text(
                  adresDetay,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ptSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "telefon",
                style: GoogleFonts.ptSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              InkWell(
                onTap: () {
                  _makePhoneCall("+90 532 472 65 40");
                },
                child: Text(
                  "+90 532 472 65 40",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ptSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "bağlantılar",
                style: GoogleFonts.ptSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      launchUrl(instaLink);
                    },
                    child: Column(
                      children: [
                        const Icon(
                          FontAwesomeIcons.squareInstagram,
                          color: Colors.black54,
                        ),
                        Text(
                          "instagram",
                          style: GoogleFonts.ptSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.black54,
                      ),
                      Text(
                        "linkedin",
                        style: GoogleFonts.ptSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
