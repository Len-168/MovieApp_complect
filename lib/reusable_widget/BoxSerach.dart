import 'package:cine_stream_ui/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxSerachReusable extends StatelessWidget {
  BoxSerachReusable({
    super.key,
    this.onChanged,
    this.autofocus,
  });

  final Function(String)? onChanged;
  final bool? autofocus;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: BoxSerachColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 3),
        child: TextFormField(
          onChanged: onChanged,
          style: GoogleFonts.poppins(
            color: Colors.white,
          ),
          autofocus: autofocus ?? true,
          cursorColor: IconSerachColor,
          decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: Icon(
              Icons.search,
              size: 30,
              color: IconSerachColor,
            ),
            hintText: "Search",
            hintStyle: TextStyle(
              color: Colors.grey,
              // color: IconSerachColor,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
