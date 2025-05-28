import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_management/state/bloc/counter_bloc.dart';
import 'package:flutter_state_management/state/bloc/counter_event.dart';
import 'package:flutter_state_management/state/bloc/counter_state.dart';
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
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.count}',
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
                    context.read<CounterBloc>().add(DecrementCounterEvent());
                  },
                  icon: const Icon(Icons.remove, color: Colors.white),
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(IncrementCounterEvent());
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
