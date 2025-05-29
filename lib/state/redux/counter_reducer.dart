import 'package:flutter_state_management/state/redux/counter_actions.dart';

int counterReducer(int state, dynamic action) {
  switch (action) {
    case CounterActions.increment:
      return state + 1;
    case CounterActions.decrement:
      return state - 1;
    default:
      return state;
  }
}
