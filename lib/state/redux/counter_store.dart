import 'package:flutter_state_management/state/redux/counter_actions.dart';
import 'package:flutter_state_management/state/redux/counter_reducer.dart';
import 'package:redux/redux.dart';

class CounterStore {
  /// Singleton [_instance] on the [CounterStore] object.
  static final CounterStore _instance = CounterStore._internal();
  late final Store<int> _store;

  int get count => _store.state;
  Store<int> get store => _store;

  factory CounterStore() {
    return _instance;
  }

  CounterStore._internal() {
    _store = Store<int>(counterReducer, initialState: 0);
  }

  void dispatch(CounterActions action) {
    _store.dispatch(action);
  }
}
