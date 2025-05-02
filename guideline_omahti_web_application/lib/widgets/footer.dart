import 'package:flutter/material.dart';
import 'package:guideline_omahti_web_application/constants/font_size.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Text("Contact Us", style: TextStyle(fontSize: CustomFontSize.body),),
                        Text("IG: @omahti_UGM\nTwitter: @OmahTI_ugm\nDaafi (08119466617)",style: TextStyle(fontSize: CustomFontSize.body2))],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/Logo_OmahTI_3_noBG.png',height: 200,
                          ), 
                          const Text("Departemen Ilmu Komputer dan Elektronika\nFakultas Matematika dan Ilmu Pengetahuan Alam Universitas Gadjah Mada Gedung C, Lantai 4 Sekip Utara \nBulaksumur Yogyakarta 55281",
                          style: TextStyle(fontSize: CustomFontSize.desc)),
                      ]
                      ),
                  ]);
  }
}