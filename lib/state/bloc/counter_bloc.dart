import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_management/state/bloc/counter_event.dart';
import 'package:flutter_state_management/state/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  /// Creates a [CounterBloc] with an initial state of [CounterState(0)].
  CounterBloc() : super(const CounterState(0)) {
    /// We now have two event handlers for the counter. We can add a reset event handler in the future if needed for [CounterBloc].
    on<IncrementCounterEvent>((event, emit) {
      emit(CounterState(state.count + 1));
    });

    on<DecrementCounterEvent>((event, emit) {
      emit(CounterState(state.count - 1));
    });
  }
}
