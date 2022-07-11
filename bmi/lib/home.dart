import 'package:bmi/widgets/button.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSelected = true;
  String sex = 'Male';
  void buttonPressed() {
    setState(() {
      isSelected = !isSelected;
    });
  }

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
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: NeuButton(
                      txt: 'FEMALE',
                      img: 'assets/female.png',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
