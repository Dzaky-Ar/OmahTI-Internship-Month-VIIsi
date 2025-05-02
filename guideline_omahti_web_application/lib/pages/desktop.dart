import 'package:flutter/material.dart';
import 'package:guideline_omahti_web_application/constants/colors.dart';
import 'package:guideline_omahti_web_application/constants/font_Size.dart';
import 'package:guideline_omahti_web_application/widgets/app_Header.dart';
import 'package:guideline_omahti_web_application/widgets/alur.dart';
import 'package:guideline_omahti_web_application/widgets/footer.dart';
import 'package:guideline_omahti_web_application/widgets/opening_Logo.dart';
import 'package:guideline_omahti_web_application/widgets/opening_Text.dart';
import 'package:guideline_omahti_web_application/widgets/pilar_Desktop.dart';
import 'package:guideline_omahti_web_application/widgets/term&Cond.dart';


class DesktopLandingPage extends StatefulWidget {
  const DesktopLandingPage({super.key});

  @override
  State<DesktopLandingPage> createState() => _DesktopLandingPageState();
}

class _DesktopLandingPageState extends State<DesktopLandingPage> {
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(

        appBar: appHeader(context),
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
              scrollDirection: Axis.vertical,
              children: [
                const SizedBox(height: 10,),
                Container(
                  height: 600,
                  width: double.maxFinite,
                  padding: const EdgeInsets.all(20),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OpeningText(),
                      OpeningLogo(),
                    ],
                  ),
                ),
                
                const SizedBox(
                  height: 700,
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child:  Padding(
                          padding: EdgeInsets.only(left: 200.0),
                          child: Text("Our 4 Focus", 
                          style: TextStyle(fontSize: CustomFontSize.heading2, fontWeight: FontWeight.bold
                        ),
                      ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: PilarDesktop(),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 50),
                
                 const SizedBox(
                  height: 600,
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      Text("With Only 4 Simple Steps", style: TextStyle(fontSize: CustomFontSize.heading2, fontWeight: FontWeight.bold),),
                      SizedBox(height: 50,),
                      Alur(),
                      
              ]),
                ),
                
                const FittedBox(
                  child: TermACondi(),
                ),

                const SizedBox(height: 200),

                 Container(
                  height: 500,
                  padding: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  color: CustomColor.orangeSecondary,
                  child: const Footer(),
                ),
              ],
            ),
    );
  }
}