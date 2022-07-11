import 'package:flutter/material.dart';

class NeuButtons extends StatelessWidget {
  String txt;
  NeuButtons(this.txt);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Text(txt),
        padding: EdgeInsets.all(50),
        decoration: BoxDecoration(
            color: Color(0xffE3EDF7),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              // darker bottom right shadow
              BoxShadow(
                color: Color(0xffAFB9C2),
                offset: Offset(4, 4),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              // lighter upper left shadow
              BoxShadow(
                color: Color(0xffF2FAFF),
                offset: Offset(-5, -5),
                blurRadius: 15,
                spreadRadius: 1,
              ),
            ]),
      ),
    );
  }
}
