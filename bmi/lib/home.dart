import 'package:bmi/widgets/button.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xffE3EDF7),
      child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: NeuButtons('Male'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
