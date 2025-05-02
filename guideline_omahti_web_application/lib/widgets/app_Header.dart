import 'package:flutter/material.dart';
import 'package:guideline_omahti_web_application/constants/colors.dart';
import 'dart:html' as html;
import 'package:guideline_omahti_web_application/constants/font_Size.dart';

PreferredSizeWidget appHeader(BuildContext context) {
  void reloadPage() {
    html.window.location.reload();
  }
  return PreferredSize(
    preferredSize: const Size.fromHeight(70),
    child: AppBar(
          
          elevation: 1,
          backgroundColor: CustomColor.scaffoldBg,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  const SizedBox( height: 15,),
                  GestureDetector(
                    onTap: reloadPage,
                    child: Image.asset(
                            'assets/Logo_OmahTI_noBG.png',height: 100,
                          ),
                  ),
                ],
              ),
              const SizedBox(width: 50,),
              const Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("Guideline",style: TextStyle( fontSize: CustomFontSize.body,fontWeight: FontWeight.bold)),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          SizedBox(height: 15,),
                          Text("for client and media sponsorship", style: TextStyle(fontSize: CustomFontSize.desc,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          
          
          
      ),
  );
}


    