import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/popup_carousel.dart';
import 'package:google_fonts/google_fonts.dart';

bool _isHovering1 = false;
bool _isHovering2 = false;
bool _isHovering3 = false;
bool _isHovering4 = false;

class New3DProjectsPage extends StatelessWidget {
  const New3DProjectsPage({super.key});

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
                children: const [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card1(),
                      SizedBox(width: 30),
                      Card2(),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card3(),
                      SizedBox(width: 30),
                      Card4(),
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

class Card4 extends StatefulWidget {
  const Card4({
    super.key,
  });

  @override
  State<Card4> createState() => _Card4State();
}

class _Card4State extends State<Card4> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
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
          _isHovering4 = hovering;
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                            _isHovering4
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
    );
  }
}

class Card3 extends StatefulWidget {
  const Card3({
    super.key,
  });

  @override
  State<Card3> createState() => _Card3State();
}

class _Card3State extends State<Card3> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
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
          _isHovering3 = hovering;
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                            _isHovering3
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
    );
  }
}

class Card2 extends StatefulWidget {
  const Card2({
    super.key,
  });

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
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
          _isHovering2 = hovering;
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                            _isHovering2
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
    );
  }
}

class Card1 extends StatefulWidget {
  const Card1({
    super.key,
  });

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
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
          _isHovering1 = hovering;
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                            _isHovering1
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
    );
  }
}
