import 'package:flutter/material.dart';
import 'package:flutter_state_management/utils/constants.dart';

class HomeCounter extends StatelessWidget {
  const HomeCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Countsy'),
        centerTitle: true,
        elevation: 3,
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(kSafeAreaMinimum),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Spacer(),
            //TODO: REPLACE ACTUAL COUNT VALUE WITH THE STATE MANAGEMENT SOLUTIONS
            const Text(
              '0',
              style: TextStyle(
                fontSize: kCounterFontSize,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //TODO: WE CAN MAKE THIS A CUSTOM WIDGET AND HAVE THE CHANGE IN ONE PLACE.
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove, color: Colors.white),
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add, color: Colors.white),
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.teal),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
