import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const String onyazi =
    "studio 693, ulusal ve uluslararası ölçekte çağdaş tasarımlar üreten, İzmir merkezli bir mimarlık ofisidir.\n \n2022’de Mimar Furkan Cem Tekin tarafından kuruldu.\n \nMimari tasarım, konsept geliştirme, ruhsat, uygulama ve detay projeleri, iç mekan ve ürün tasarımı, mimari danışmanlık ve kontrollörlük hizmetleri veriyor.";

const String bioIsim = "Barış Can Tekin";
const String bioDetay =
    "Kurucu / Patıron / Bixi \nBarch: Hayat Ünferstesi | MA: IEEH";
const String bioText =
    "1986 yılında İzmir’de doğdu.\nSivas ve Denizli’de toplamda 16 sene yaşadı. \n2004 yılında Denizli Anadolu Lisesi’nden, \n2010 yılında İstanbul Teknik Üniversitesi,\nMimarlık Fakültesi, Mimarlık Bölümü’nden mezun oldu. Lisans değişim programı kapsamında Politecnico di Milano, Mantova Kampüsü’nde bir yıl mimarlık eğitimi aldı. \n2012 yılında, “Türkiye’deki Güncel Konut Araştırmalarında ‘Ev’ Olgusu” başlıklı tezi ile Kadir Has Üniversitesi, Sosyal Bilimler Enstitüsü, Tasarım Yüksek Lisans Programı’nı ve iki yıllık akademik asistanlık deneyimini tamamladı. İki yıla yakın İstanbul’da Farzımahal Mimarlık’ta çalıştı. Askerlik görevinin ardından İzmir’e yerleşerek iki yıl Ayyapı Mimari’de mimarlık pratiğine devam etti.\n2016’da kendi mimari ofisi olan Pigato Mimarlık’ı kurdu. Çalışmalarında burada devam ediyor.";

class New3dAboutUsPage extends StatelessWidget {
  const New3dAboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: SizedBox(
          width: 1100,
          height: 750,
          child: Center(
            child: SingleChildScrollView(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 300,
                      height: 600,
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
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 240,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                          Colors.grey.shade100,
                                          BlendMode.color),
                                      image: const NetworkImage(
                                          "https://i.ibb.co/Ntv1gWH/3dprint2.jpg"))),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "studio 693",
                              style: GoogleFonts.ptSans(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              onyazi,
                              style: GoogleFonts.ptSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 600,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  Colors.grey.shade100, BlendMode.color),
                              fit: BoxFit.cover,
                              image: const NetworkImage(
                                  "https://i.ibb.co/3TT6ZPV/Ekran-Resmi-2023-08-28-02-56-43.png")),
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
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(top: 15, left: 15, right: 15),
                      width: 300,
                      height: 600,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              bioIsim,
                              style: GoogleFonts.ptSans(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              bioDetay,
                              style: GoogleFonts.ptSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              bioText,
                              style: GoogleFonts.ptSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            )
                          ]),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
