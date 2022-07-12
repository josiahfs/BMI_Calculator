import 'package:bmi/widgets/button.dart';
import 'package:bmi/widgets/card.dart';
import 'package:bmi/widgets/box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Gender {
  male,
  female,
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Gender selectedGender;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xffE3EDF7),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 36.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: NeuButton(
                      txt: 'MALE',
                      img: 'assets/male.png',
                      altImg: 'assets/male1.png',
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: NeuButton(
                      txt: 'FEMALE',
                      img: 'assets/female.png',
                      altImg: 'assets/female1.png',
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            NeuCard(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 36.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NeuBox(
                    txt: 'WEIGHT',
                    value: 50,
                    fixValue: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  NeuBox(
                    txt: 'AGE',
                    value: 20,
                    fixValue: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
