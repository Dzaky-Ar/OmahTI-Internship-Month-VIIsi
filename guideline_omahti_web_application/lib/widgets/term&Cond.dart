import 'package:flutter/material.dart';
import 'package:guideline_omahti_web_application/constants/colors.dart';
import 'package:guideline_omahti_web_application/constants/font_size.dart';

class TermACondi extends StatefulWidget {
  const TermACondi({super.key});

  @override
  State<TermACondi> createState() => _TermACondiState();
}

class _TermACondiState extends State<TermACondi> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 900,

      child: Card(
        color: CustomColor.scaffoldBg,
        elevation: 1,
        child: ExpansionTile(
      
          title: Text("Term and Condition for Media Sponsorship",style: TextStyle(fontSize: CustomFontSize.desc),
          ),
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("1. Events are themed around IT, tech, and related fields.\n2. Types of events include competitions, hackathons, workshops, webinars/seminars, and others.\n3. Event organizers are required to display the OmahTI logo on all promotional materials such as pamphlets, posters, banners, websites, billboards, backdrops, etc.\n4. Logo files can be accessed at https://s.id/LogoOmahTI.\n5. There are no size requirements for posters.\n6. Media partner submissions will be reviewed within 1–2 days.\n7. Partnership benefits can be discussed in advance with the External Affairs division of OmahTI.\n8. Posters or similar promotional media will be shared via Instagram story @omahti_ugm, Twitter post @OmahTI_ugm, and the OmahTI UGM community group.",
              style: TextStyle(fontSize: CustomFontSize.desc2),),
              )
              
          ],
          ),
      ),
    );
  }
}