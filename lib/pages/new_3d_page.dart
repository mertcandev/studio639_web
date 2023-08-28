import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/bottom_bar.dart';
import 'package:flutter_web_app/components/new_3d_appbar.dart';
import 'package:flutter_web_app/pages/3d_aboutus_page.dart';
import 'package:flutter_web_app/pages/3d_projects_page.dart';
import 'package:flutter_web_app/pages/contact_us.dart';

final controller3D = PageController(initialPage: 0);

class New3DPage extends StatefulWidget {
  const New3DPage({super.key});

  @override
  State<New3DPage> createState() => _New3DPageState();
}

class _New3DPageState extends State<New3DPage> {
  @override
  void dispose() {
  controller3D.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: New3DAppBar(),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller3D,
        scrollDirection: Axis.vertical,
        children: const [New3dAboutUsPage(), New3DProjectsPage(), ContactUs()],
      ),
    );
  }
}
