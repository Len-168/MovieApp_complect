import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoneListScreenWidget extends StatelessWidget {
  const NoneListScreenWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                image,
                width: 76,
                height: 76,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Text(
                title,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Text(
                subTitle,
                style: GoogleFonts.montserrat(
                  color: Color(0xFFbac92929D),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
