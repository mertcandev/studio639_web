import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/new_arch_appbar.dart';
import 'package:flutter_web_app/pages/arch_aboutus_page.dart';
import 'package:flutter_web_app/pages/new_arch_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/bottom_nav_bar.dart';

final Uri _url = Uri.parse('https://www.altnyayla.bel.tr/');

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool _isLeftHovering = false;
  bool _isRightHovering = false;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    var leftSize = MediaQuery.of(context).size.width / 2;
    var rightSize = MediaQuery.of(context).size.width / 2;

    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) => const NewArchPage()));
                      
                    },
                    onHover: (hovering) {
                      setState(() {
                        _isLeftHovering = hovering;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      height: size,
                      width: leftSize,
                      curve: Curves.linear,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  _isLeftHovering
                                      ? Colors.transparent
                                      : Colors.grey.shade100,
                                  BlendMode.color),
                              fit: BoxFit.cover,
                              image: const AssetImage(
                                "assets/arch1.jpeg",
                              ))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 380,
                          ),
                          Text(
                            "mimarlık",
                            style: GoogleFonts.ptSans(
                                shadows: <Shadow>[
                                  const Shadow(
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 20,
                                    color: Colors.black,
                                  )
                                ],
                                fontSize: 40,
                                fontWeight: FontWeight.w200,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    onHover: (hovering) {
                      setState(() {
                        _isRightHovering = hovering;
                      });
                    },
                    child: AnimatedContainer(
                      curve: Curves.easeIn,
                      duration: const Duration(milliseconds: 100),
                      height: size,
                      width: rightSize,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  _isRightHovering == true
                                      ? Colors.transparent
                                      : Colors.grey.shade100,
                                  BlendMode.color),
                              fit: BoxFit.cover,
                              image: const AssetImage("3dprint2.jpeg"))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 380,
                          ),
                          Text(
                            "3D baskı",
                            style: GoogleFonts.ptSans(
                                shadows: <Shadow>[
                                  const Shadow(
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 20.0,
                                    color: Colors.black,
                                  )
                                ],
                                fontSize: 40,
                                fontWeight: FontWeight.w200,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Text(
                "studio 693",
                style: GoogleFonts.ptSans(
                    shadows: <Shadow>[
                      const Shadow(
                        offset: Offset(0.0, 0.0),
                        blurRadius: 15.0,
                        color: Colors.black54,
                      )
                    ],
                    fontSize: 60,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
