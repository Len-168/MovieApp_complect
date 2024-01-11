import 'package:cine_stream_ui/constant/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return RatingSliderModel();
      },
    );
  }
}

class RatingSliderModel extends StatefulWidget {
  const RatingSliderModel({super.key});

  @override
  State<RatingSliderModel> createState() => _RatingSliderModelState();
}

class _RatingSliderModelState extends State<RatingSliderModel> {

  double ratingValue = 5.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 263,
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 5,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.close,
                size: 28,
                // color: Color(0xFFA0A3BD), // it grey color from figma
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text(
                    "Rate this movie",
                    style: GoogleFonts.montserrat(
                      color: Color(0xFF4E4B66),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    ratingValue.toString(),
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 32,
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  child: SliderTheme(
                    data: SliderThemeData(
                      trackHeight: 12,
                      activeTrackColor: Colors.orange,
                      inactiveTrackColor: Color(0xFFD9DBE9),
                      thumbColor: Colors.white,
                      activeTickMarkColor: Colors.transparent,
                      inactiveTickMarkColor: Colors.transparent,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    ),
                    child: Slider(
                      value: ratingValue,
                      min: 0,
                      max: 10,
                      divisions: 20,
                      onChanged: (value) {
                        setState(() {
                          ratingValue = value;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Rating: $ratingValue');
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      side: BorderSide.none,
                      backgroundColor: Colors.blue,
                      shape: StadiumBorder(),
                    ),
                    child: Text(
                      "OK",
                      style: googleFontsMontWhite16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
