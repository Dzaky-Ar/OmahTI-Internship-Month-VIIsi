import 'package:flutter/material.dart';
import 'package:guideline_omahti_web_application/pages/desktop.dart';
import 'package:guideline_omahti_web_application/pages/mobile.dart';
import 'package:guideline_omahti_web_application/pages/tablet.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {

    return  LayoutBuilder(
      
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const MobileLandingPage();
        } else if (constraints.maxWidth < 1200) {
          return const TabletLandingPage();
        } else {
          return const DesktopLandingPage();
        }
      }
      );
  }
}
