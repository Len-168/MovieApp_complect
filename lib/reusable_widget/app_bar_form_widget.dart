import 'package:cine_stream_ui/constant/colors.dart';
import 'package:cine_stream_ui/constant/textStyle.dart';
import 'package:flutter/material.dart';

AppBar AppBarFormWidget(String title,
    {IconData? leading,
    IconData? actionIcon,
    Color? colorBackground = BackAppColors,
    Color? colorAllFore = Colors.white,
    VoidCallback? leadingRout,
    VoidCallback? actionRout}) {
  return AppBar(
    elevation: 0,
    backgroundColor: colorBackground,
    centerTitle: true,
    leading: IconButton(
      onPressed: leadingRout,
      icon: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Icon(
          leading,
          color: colorAllFore,
          size: 20,
        ),
      ),
    ),
    title: Text(
      title,
      // style: GoogleFonts.montserrat(
      //   color: colorAllFore,
      //   fontWeight: FontWeight.w600,
      //   fontSize: 20,
      // ),
      style: googleFontsMontWhite16,
    ),
    actions: [
      IconButton(
        onPressed: actionRout,
        icon: Icon(
          actionIcon,
          color: colorAllFore,
        ),
      ),
    ],
  );
}
