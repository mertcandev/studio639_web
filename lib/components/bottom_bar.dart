import 'package:flutter/material.dart';
import 'package:flutter_web_app/pages/contact_us.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

const String adresDetay =
    "Meltem Mahallesi, Stadın Arka Tarafı \nKaçamak Müzikhol Üstü, 07070 Muratpaşa / Antalya";
final Uri url = Uri.parse("mertcanylmaz@gmail.com");

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  void _sendEmail() {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'mertcanylmaz@gmail.com',
    );
    launchUrl(emailLaunchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Colors.black.withOpacity(0.8),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                launchUrl(instaLink);
              },
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Bizi takip edin!",
                    style: GoogleFonts.ptSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey.shade200),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 400),
            Text(
              adresDetay,
              textAlign: TextAlign.end,
              style: GoogleFonts.ptSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w200,
                  color: Colors.grey.shade300),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "+90 242 500 20 20",
                  textAlign: TextAlign.end,
                  style: GoogleFonts.ptSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                      color: Colors.grey.shade300),
                ),
                InkWell(
                  onTap: () {
                    _sendEmail();
                  },
                  child: Text(
                    "info@studio693.com",
                    textAlign: TextAlign.end,
                    style: GoogleFonts.ptSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                        color: Colors.grey.shade300),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
