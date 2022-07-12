import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';

class NeuButton extends StatefulWidget {
  String txt, img, altImg;
  Color color;

  NeuButton(
      {required this.txt,
      required this.img,
      required this.altImg,
      required this.color});

  @override
  State<NeuButton> createState() => _NeuButtonState();
}

class _NeuButtonState extends State<NeuButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Offset offset = isPressed ? Offset(4, 4) : Offset(6, 6);
    double blur = isPressed ? 10 : 5;

    return GestureDetector(
      onTap: (() {
        setState(() {
          isPressed = !isPressed;
        });
      }),
      child: AnimatedContainer(
        width: 136,
        height: 159,
        duration: Duration(milliseconds: 170),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              isPressed ? widget.altImg : widget.img,
              width: 59,
              height: 53,
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              widget.txt,
              style: GoogleFonts.poppins(
                  color: isPressed ? widget.color : Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Color(0xffE3EDF7),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              // darker bottom right shadow
              BoxShadow(
                color: Color(0xffAFB9C2),
                offset: offset,
                blurRadius: blur,
                spreadRadius: 1,
                inset: isPressed,
              ),
              // lighter upper left shadow
              BoxShadow(
                color: Color(0xffF2FAFF),
                offset: -offset,
                blurRadius: blur,
                spreadRadius: 1,
                inset: isPressed,
              ),
            ]),
      ),
    );
  }
}
