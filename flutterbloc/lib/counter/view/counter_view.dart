import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../counter.dart';
import '../../theme/theme.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('$state', style: textTheme.headline1);
          },
        ),
      ),
      floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () => context.read<CounterCubit>().increment(),
            ),
            const SizedBox(
              height: 8,
            ),
            FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () => context.read<CounterCubit>().decrement(),
            ),
            const SizedBox(
              height: 8,
            ),
            FloatingActionButton(
              child: const Icon(Icons.brightness_6),
              onPressed: () => context.read<ThemeCubit>().toggleTheme(),
            ),
          ]),
    );
  }
}
