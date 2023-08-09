import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/popup_carousel.dart';
import 'package:google_fonts/google_fonts.dart';

class ArchProjectsPage extends StatefulWidget {
  const ArchProjectsPage({super.key});

  @override
  State<ArchProjectsPage> createState() => _ArchProjectsPageState();
}

class _ArchProjectsPageState extends State<ArchProjectsPage> {
  bool isHovering1 = false;
  bool isHovering2 = false;
  bool isHovering3 = false;
  bool isHovering4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            Text(
              "projelerimiz",
              style: GoogleFonts.ptSans(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                shadows: <Shadow>[
                  Shadow(
                    offset: const Offset(0, 0),
                    blurRadius: 10,
                    color: Colors.grey.shade300,
                  )
                ],
              ),
            ),
            Text(
              "yurdışında hayata geçen bazı projelerimiz",
              style: GoogleFonts.ptSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(top: 10),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          showCupertinoDialog(
                            barrierDismissible: true,
                            context: context,
                            builder: (context) {
                              return Center(
                                child: PopUpCarousel(
                                  projectName: carClubList,
                                  projectTitle: "car club",
                                ),
                              );
                            },
                          );
                        },
                        onHover: (hovering) {
                          setState(() {
                            isHovering1 = hovering;
                          });
                        },
                        child: Container(
                          width: 500,
                          height: 300,
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AnimatedContainer(
                                  curve: Curves.linear,
                                  duration: const Duration(milliseconds: 100),
                                  height: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      image: DecorationImage(
                                          colorFilter: ColorFilter.mode(
                                              isHovering1
                                                  ? Colors.transparent
                                                  : Colors.grey.shade100,
                                              BlendMode.color),
                                          fit: BoxFit.cover,
                                          image: const NetworkImage(
                                              "https://i.ibb.co/xXnJ7p0/6.jpg"))),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "car club",
                                      style: GoogleFonts.ptSans(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "dambaş - ohio",
                                      style: GoogleFonts.ptSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      InkWell(
                        onTap: () {
                          showCupertinoDialog(
                            barrierDismissible: true,
                            context: context,
                            builder: (context) {
                              return Center(
                                child: PopUpCarousel(
                                  projectName: villaElList,
                                  projectTitle: "villa e. l.",
                                ),
                              );
                            },
                          );
                        },
                        onHover: (hovering) {
                          setState(() {
                            isHovering2 = hovering;
                          });
                        },
                        child: Container(
                          width: 500,
                          height: 300,
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AnimatedContainer(
                                  curve: Curves.linear,
                                  duration: const Duration(milliseconds: 100),
                                  height: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      image: DecorationImage(
                                          colorFilter: ColorFilter.mode(
                                              isHovering2
                                                  ? Colors.transparent
                                                  : Colors.grey.shade100,
                                              BlendMode.color),
                                          fit: BoxFit.cover,
                                          image: const NetworkImage(
                                              "https://i.ibb.co/5KGDFWL/1.jpg"))),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "villa e.l.",
                                      style: GoogleFonts.ptSans(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "adam ölen dere - ohio",
                                      style: GoogleFonts.ptSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          showCupertinoDialog(
                            barrierDismissible: true,
                            context: context,
                            builder: (context) {
                              return Center(
                                child: PopUpCarousel(
                                  projectName: tetrixlist,
                                  projectTitle: "tetrix",
                                ),
                              );
                            },
                          );
                        },
                        onHover: (hovering) {
                          setState(() {
                            isHovering3 = hovering;
                          });
                        },
                        child: Container(
                          width: 500,
                          height: 300,
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AnimatedContainer(
                                  curve: Curves.linear,
                                  duration: const Duration(milliseconds: 100),
                                  height: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      image: DecorationImage(
                                          colorFilter: ColorFilter.mode(
                                              isHovering3
                                                  ? Colors.transparent
                                                  : Colors.grey.shade100,
                                              BlendMode.color),
                                          fit: BoxFit.cover,
                                          image: const NetworkImage(
                                              "https://i.ibb.co/Dr8ZrT4/1.jpg"))),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "tetrix",
                                      style: GoogleFonts.ptSans(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "gırcıllı - ohio",
                                      style: GoogleFonts.ptSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      InkWell(
                        onTap: () {
                          showCupertinoDialog(
                            barrierDismissible: true,
                            context: context,
                            builder: (context) {
                              return Center(
                                child: PopUpCarousel(
                                  projectName: tinyVillaList,
                                  projectTitle: "tiny villa",
                                ),
                              );
                            },
                          );
                        },
                        onHover: (hovering) {
                          setState(() {
                            isHovering4 = hovering;
                          });
                        },
                        child: Container(
                          width: 500,
                          height: 300,
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AnimatedContainer(
                                  curve: Curves.linear,
                                  duration: const Duration(milliseconds: 100),
                                  height: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      image: DecorationImage(
                                          colorFilter: ColorFilter.mode(
                                              isHovering4
                                                  ? Colors.transparent
                                                  : Colors.grey.shade100,
                                              BlendMode.color),
                                          fit: BoxFit.cover,
                                          image: const NetworkImage(
                                              "https://i.ibb.co/vj6z6py/1.jpg"))),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "tiny villa",
                                      style: GoogleFonts.ptSans(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "tenkeli - ohio",
                                      style: GoogleFonts.ptSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
