import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_state_management/state/redux/counter_actions.dart';
import 'package:flutter_state_management/state/redux/counter_store.dart';
import 'package:flutter_state_management/utils/constants.dart';

class HomeReduxCounter extends StatelessWidget {
  static const String routeName = '/home_redux_counter';
  const HomeReduxCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<int>(
      store: CounterStore().store,
      child: SafeArea(
        minimum: const EdgeInsets.all(kSafeAreaMinimum),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Spacer(),
            StoreConnector<int, int>(
              converter: (store) => store.state,
              builder: (context, count) {
                return Text(
                  '$count',
                  style: TextStyle(
                    fontSize: kCounterFontSize,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                );
              },
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    CounterStore().dispatch(CounterActions.decrement);
                  },
                  icon: const Icon(Icons.remove, color: Colors.white),
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    CounterStore().dispatch(CounterActions.increment);
                  },
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
