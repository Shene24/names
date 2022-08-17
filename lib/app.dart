import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:names/src/features/KurdishNamesList.dart';

class KurdishNames extends StatelessWidget {
  const KurdishNames({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
      fontFamily: GoogleFonts.notoSansArabic().fontFamily),
      home: KurdishNamesList(),
    );
  

    
  }
}
