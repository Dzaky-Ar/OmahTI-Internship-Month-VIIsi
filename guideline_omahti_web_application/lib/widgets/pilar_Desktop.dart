import 'package:flutter/material.dart';
import 'package:guideline_omahti_web_application/constants/font_Size.dart';

class PilarDesktop extends StatefulWidget {
  const PilarDesktop({super.key});

  @override
  State<PilarDesktop> createState() => _PilarDesktopState();
}

class _PilarDesktopState extends State<PilarDesktop> {
  
  final List <IconData> icon = [
    Icons.school,
    Icons.laptop,
    Icons.workspace_premium,
    Icons.support_agent,
  ];

  final List<Color> color = [
    Colors.green,
    Colors.purple,
    Colors.orange,
    Colors.blue,
  ];

  final List <String> text = [
    "Pelatihan",
    "Produk",
    "Perlombaan",
    "Pelayanan",
  ];

  final List <String> desc = [
    "Mengembangkan hardskill mahasiswa Ilmu Komputer untuk kebutuhan industri dan mendukung pilar lainnya.",
    "Meningkatkan kualitas, kuantitas, dan manfaat produk melalui pemanfaatan teknologi terkini.",
    "Membina mahasiswa untuk berkompetisi di ajang IT nasional melalui pelatihan intensif dan fasilitas yang mendukung.",
    "Memberikan layanan teknis dan dukungan aplikasi bagi skala universitas, fakultas, departemen, maupun program studi.",
  ];
  final List <bool> _isClicked = [
      true,true,true,true
   ];
  final List <bool> _isNotHovered = [
      true,true,true,true
   ];
  late List<double> cardWidth;
  late List<double> cardHeight;
  

  @override
  void initState() {
    super.initState();
    // Initialize card dimensions
    cardWidth = List.filled(4, 300); // Default width for all cards
    cardHeight = List.filled(4, 250); // Default height for all cards
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 20,
          runSpacing: 20,
          children: List.generate(4, (index){
              return MouseRegion(
                onEnter: (_) {setState(() {
                  _isNotHovered[index]=false;
                  cardWidth[index] = 320;
                  cardHeight[index] = 270;
                  for(int i = 0; i<4; i++){
                    if(index % 4 == i){
                      continue;
                    }
                    else{
                  cardWidth[i] = 280;
                  cardHeight[i] = 230;
                    }
                  }
                });},
        
                onExit: (_) {setState(() {
                  _isNotHovered[index]=true;
                  for(int i = 0; i<4; i++){
                    cardWidth[i] = 300;
                    cardHeight[i] = 250;
                  }
                });},
                child: GestureDetector(
                  onTap: () => setState(() {
                    _isClicked[index] = !_isClicked[index];
                  }),
        
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.linear,
                      width: cardWidth[index],
                      height: cardHeight[index],
                      child: Card(
                        elevation: 1,
                        color: color[index],
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: AnimatedCrossFade(
                            duration: const Duration(milliseconds: 300),
                            
                            firstChild: 
                               Center(
                                 child: SizedBox(
                                  height: 250,
                                  width: 300,
                                   child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:
                                    [
                                    Icon(
                                      icon[index],
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                    Text(
                                        text[index],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: CustomFontSize.body,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                   ]),
                                 ),
                               ),
                          
                               secondChild: Center(
                                 child: SizedBox(
                                  height: 200,
                                  width: 250,
                                   child: Text(desc[index],
                                       style: const TextStyle(
                                         color: Colors.white,
                                         fontSize: CustomFontSize.body2,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                 ),
                               ),
                                crossFadeState: _isNotHovered[index]? CrossFadeState.showFirst : CrossFadeState.showSecond,
                          ),
                            
                          ),
                        
                    ),
                                ),
                  ),
              );
            }
            )
          
        ),
      ),
    );
  }
}