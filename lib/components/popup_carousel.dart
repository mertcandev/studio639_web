import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

late PageController _pageController;
List<String> carClubList = [
  "https://i.ibb.co/GxdrWd1/1.jpg",
  "https://i.ibb.co/K9QzB3C/2.jpg",
  "https://i.ibb.co/zVPfhTG/3.jpg",
  "https://i.ibb.co/k5VSDdx/4.jpg",
  "https://i.ibb.co/qpN8ZMH/5.jpg",
  "https://i.ibb.co/xXnJ7p0/6.jpg"
];
List<String> villaElList = [
  "https://i.ibb.co/5KGDFWL/1.jpg",
  "https://i.ibb.co/f4GSRsw/2.jpg",
  "https://i.ibb.co/Mfb1Yk5/3.jpg",
  "https://i.ibb.co/JsYZCH2/4.jpg",
  "https://i.ibb.co/G0Zsjrn/5.jpg"
];
List<String> tetrixlist = [
  "https://i.ibb.co/Dr8ZrT4/1.jpg",
  "https://i.ibb.co/jzx5jns/2.jpg",
  "https://i.ibb.co/py9s021/3.jpg",
  "https://i.ibb.co/sq9rfLq/4.jpg",
  "https://i.ibb.co/G72C7H8/5.jpg",
  "https://i.ibb.co/HDjdzdN/6.jpg",
  "https://i.ibb.co/nQZ9RmT/7.jpg"
];
List<String> tinyVillaList = [
  "https://i.ibb.co/vj6z6py/1.jpg",
  "https://i.ibb.co/dGv1VXv/2.jpg",
  "https://i.ibb.co/5rmGvTn/3.jpg",
  "https://i.ibb.co/H40SXNW/4.jpg",
  "https://i.ibb.co/KNB1yk2/5.jpg",
  "https://i.ibb.co/Sfcxcmq/6.jpg"
];

class PopUpCarousel extends StatefulWidget {
  const PopUpCarousel(
      {super.key, required this.projectName, required this.projectTitle});
  final List projectName;
  final String projectTitle;

  @override
  State<PopUpCarousel> createState() => _PopUpCarouselState();
}

class _PopUpCarouselState extends State<PopUpCarousel> {
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750,
      width: 1200,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider(
            items: widget.projectName
                .map((item) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Center(
                          child: Image.network(item,
                              fit: BoxFit.cover, width: 1100)),
                    ))
                .toList(),
            carouselController: buttonCarouselController,
            options: CarouselOptions(
                aspectRatio: 16 / 10,
                autoPlay: false,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                viewportFraction: 0.8,
                initialPage: 0,
                height: 600),
          ),
          DefaultTextStyle(
            style: GoogleFonts.ptSans(
                fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
            child: Text(
              widget.projectTitle,
            ),
          ),
          DefaultTextStyle(
            style: GoogleFonts.ptSans(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
            child: const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum convallis elit eu vulputate accumsan. \nFusce eget interdum arcu. Fusce condimentum sodales dui, id venenatis quam auctor ut.",
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
