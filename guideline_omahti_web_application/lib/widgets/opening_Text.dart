import 'package:flutter/material.dart';
import 'package:guideline_omahti_web_application/constants/colors.dart';

class OpeningText extends StatelessWidget {
  const OpeningText({super.key});
  

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 60),
          const Text(
                  'Have you heard of',
                  style: TextStyle(
                    height: 0.7,
                    fontSize: 60,
                    color: CustomColor.hintDark,
                    fontWeight: FontWeight.bold
                  ),
                ),
           Row(
            children: [
              Image.asset(
                'assets/Logo_omahTI_2_noBg.png',
                height: 70,
              ),
              const Text(
                '?',
                style: TextStyle(
                  fontSize: 80,
                  color: CustomColor.hintDark,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: screenWidth>600? screenWidth / 2 : screenWidth - 100,
            height: 150,
            child: const Text(
              'Organisasi Mahasiswa Ahli Teknologi Informasi (OmahTI) adalah badan semi-otonom di bawah Himpunan Mahasiswa Ilmu Komputer Fakultas Matematika dan Ilmu Pengetahuan Alam Universitas Gadjah Mada.',
              style: TextStyle(
                fontSize: 20,
                color: CustomColor.hintDark,
              ),
            ),
          ),
        ],
      ),
    );
  }
}