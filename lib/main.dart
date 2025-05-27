import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_management/screens/home_counter.dart';
import 'package:flutter_state_management/state/bloc/counter_bloc.dart'; // Import your bloc

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(), // Create your bloc instance
      child: MaterialApp(
        title: 'Countsy',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        ),
        home: const HomeCounter(),
      ),
    );
  }
}
