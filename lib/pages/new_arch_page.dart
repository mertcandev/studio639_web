import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/bottom_bar.dart';
import 'package:flutter_web_app/components/new_arch_appbar.dart';
import 'package:flutter_web_app/pages/arch_aboutus_page.dart';
import 'package:flutter_web_app/pages/arch_projects_page.dart';
import 'package:flutter_web_app/pages/contact_us.dart';

final controller = PageController(initialPage: 0);

class NewArchPage extends StatefulWidget {
  const NewArchPage({super.key});

  @override
  State<NewArchPage> createState() => _NewArchPageState();
}

class _NewArchPageState extends State<NewArchPage> {
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: NewArchAppBar(),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        scrollDirection: Axis.vertical,
        children: const [ArchAboutUsPage(), ArchProjectsPage(), ContactUs()],
      ),
    );
  }
}
