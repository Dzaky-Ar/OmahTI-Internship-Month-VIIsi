import 'package:flutter/material.dart';
import 'package:guideline_omahti_web_application/constants/colors.dart';
import 'package:guideline_omahti_web_application/constants/font_Size.dart';

class Alur extends StatefulWidget {

  static List<String> langkah = [
    "Contact OmahTI and fill in the form provided",
    "Wait for a confirmation and arrange meetings for more detail", 
    "Meet!",
    "Your project is in trusted hands!",
  ];

  const Alur({super.key});
  @override
  State<Alur> createState() => _AlurState();
}

class _AlurState extends State<Alur> {
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(Alur.langkah.length, (index) {
            return SizedBox(
              width: screenWidth/5,
              child: Card(
                elevation: 0,
                color: CustomColor.scaffoldBg,
                child: Container(
                  width: screenWidth/4 * 0.7,
                  height: 400,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 55,
                        backgroundColor: Colors.blueAccent,
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: CustomFontSize.body,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: screenWidth / 4 * 0.5,
                        child: Text(
                          Alur.langkah[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: CustomFontSize.body2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}