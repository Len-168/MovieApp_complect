// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class TabLabel extends StatefulWidget {
  TabLabel({
    required this.TabName,
    super.key,
  });
  String TabName;

  @override
  State<TabLabel> createState() => _TabLabelState();
}

class _TabLabelState extends State<TabLabel> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.TabName,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
    );
  }
}

class TextFieldReusabel extends StatelessWidget {
  TextFieldReusabel({
    super.key,
    this.suffixIcon,
    this.controller,
    this.obscureText,
    this.onPressedFunction,
  });
  final bool? obscureText;
  final IconData? suffixIcon;
  final TextEditingController? controller;
  final VoidCallback? onPressedFunction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      controller: controller,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        fillColor: Colors.grey.shade700,
        filled: true,
        focusColor: const Color.fromARGB(143, 158, 158, 158),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        suffixIcon: IconButton(
            onPressed: onPressedFunction,
            icon: Icon(
              suffixIcon,
              color: Colors.white,
            )),
        hintStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(
              color: Colors.white,
            )),
      ),
    );
  }
}

class labelTextFilde extends StatelessWidget {
  labelTextFilde({
    required this.Label,
    super.key,
  });

  String Label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 10),
      child: Text(
        Label,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 19,
        ),
      ),
    );
  }
}

class btnAuth extends StatelessWidget {
  btnAuth({
    super.key,
    required this.LabelBTN,
  });

  String LabelBTN;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // width: 280,
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 0.2,
              spreadRadius: 0.2,
            )
          ],
          color: Colors.black.withOpacity(0.7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            LabelBTN,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
