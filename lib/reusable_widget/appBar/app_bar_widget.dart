import 'package:cine_stream_ui/constant/colors.dart';
import 'package:cine_stream_ui/constant/textStyle.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({
    super.key,
    required this.title,
    this.colorBackground = BackAppColors,
    this.colorAllFore = Colors.white,
    this.leading,
    this.actionIcon,
    this.leadingRout,
    this.actionRout,
  });

  final String? title;
  final Color? colorBackground, colorAllFore;
  final IconData? leading, actionIcon;
  final VoidCallback? leadingRout, actionRout;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: colorBackground,
      centerTitle: true,
      elevation: 0,
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
        title!,
        // style: GoogleFonts.montserrat(
        //   color: colorAllFore,
        //   fontWeight: FontWeight.w600,
        //   fontSize: 16,
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
}
