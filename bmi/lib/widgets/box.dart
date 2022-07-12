// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart' hide BoxDecoration, BoxShadow;

class NeuBox extends StatefulWidget {
  String txt;
  int value;
  int fixValue;
  NeuBox({required this.txt, required this.value, required this.fixValue});
  @override
  State<NeuBox> createState() => _NeuBoxState();
}

class _NeuBoxState extends State<NeuBox> {
  bool isPressed = false;
  // double _value = 50;
  // int fixValue = 0;
  bool isPlus = true;
  bool isMin = true;
  @override
  Widget build(BuildContext context) {
    Offset offset = isPressed ? Offset(4, 4) : Offset(6, 6);
    double blur = isPressed ? 10 : 5;

    return CupertinoPageScaffold(
      backgroundColor: Color(0xffE3EDF7),
      child: Container(
        width: 136,
        height: 159,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.txt,
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              widget.fixValue.toString(),
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CupertinoButton(
                  onPressed: () {
                    setState(() {
                      isMin = !isMin;
                      isMin = !isMin;
                      widget.value = widget.value - 1;
                      widget.fixValue = widget.value;
                    });
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                          color: Color(0xffE3EDF7),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            // darker bottom right shadow
                            BoxShadow(
                              color: Color(0xffAFB9C2),
                              offset: Offset(2, 2),
                              blurRadius: blur,
                              spreadRadius: 1,
                              inset: isMin,
                            ),
                            // lighter upper left shadow
                            BoxShadow(
                              color: Color(0xffF2FAFF),
                              offset: -Offset(4, 4),
                              blurRadius: blur,
                              spreadRadius: 1,
                              inset: isMin,
                            ),
                          ]),
                      child: Center(
                        child: Text(
                          '-',
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
                CupertinoButton(
                  onPressed: () {
                    setState(() {
                      isPlus = !isPlus;
                      isPlus = !isPlus;
                      widget.value = widget.value + 1;
                      widget.fixValue = widget.value;
                    });
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                          color: Color(0xffE3EDF7),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            // darker bottom right shadow
                            BoxShadow(
                              color: Color(0xffAFB9C2),
                              offset: Offset(2, 2),
                              blurRadius: blur,
                              spreadRadius: 1,
                              inset: isPlus,
                            ),
                            // lighter upper left shadow
                            BoxShadow(
                              color: Color(0xffF2FAFF),
                              offset: -Offset(4, 4),
                              blurRadius: blur,
                              spreadRadius: 1,
                              inset: isPlus,
                            ),
                          ]),
                      child: Center(
                        child: Text(
                          '+',
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        // padding: EdgeInsets.all(30),
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
