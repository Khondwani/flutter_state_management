class CounterState {
  // make it a private field and only accessible through the getter function
  final int _count;
  int get count => _count;
  const CounterState(this._count);
}
