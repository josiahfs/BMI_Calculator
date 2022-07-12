// ignore_for_file: sort_child_properties_last

import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart' hide BoxDecoration, BoxShadow;

class NeuCard extends StatefulWidget {
  @override
  State<NeuCard> createState() => _NeuCardState();
}

class _NeuCardState extends State<NeuCard> {
  bool isPressed = true;
  double _value = 0;
  int fixValue = 0;
  @override
  Widget build(BuildContext context) {
    Offset offset = isPressed ? Offset(4, 4) : Offset(6, 6);
    double blur = isPressed ? 10 : 5;

    return CupertinoPageScaffold(
      backgroundColor: Color(0xffE3EDF7),
      child: Container(
        width: 334,
        height: 179,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.w500),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'CM',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              fixValue.toString(),
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: 280,
              child: CupertinoSlider(
                min: 0,
                max: 230.0,
                value: _value,
                divisions: 230,
                activeColor: Color(0xffAFB9C2),
                thumbColor: Color(0xffE3EDF7),
                onChanged: (value) {
                  setState(() {
                    _value = value;
                    fixValue = _value.round();
                  });
                },
              ),
            )
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
