abstract class CounterEvent {
  const CounterEvent();
}

class IncrementCounterEvent extends CounterEvent {
  const IncrementCounterEvent();
}

class DecrementCounterEvent extends CounterEvent {
  const DecrementCounterEvent();
}
