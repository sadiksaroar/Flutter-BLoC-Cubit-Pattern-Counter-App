import 'package:block/cubit/counter_cubit.dart';
import 'package:block/cubit/counter_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  final textStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Cubit Counter App')),
        ),
        body: BlocBuilder<CounterCubit, CounterCubitState>(
            builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (state is ConuterValueUpdate)
                    ? Text(
                        state.counter.toString(),
                        style: textStyle,
                      )
                    : Text(
                        '0',
                        style: textStyle,
                      ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        context.read<CounterCubit>().counterIncrease();
                      },
                      child: Icon(Icons.add),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        context.read<CounterCubit>().counterdecrease();
                      },
                      child: Icon(Icons.remove),
                    )
                  ],
                ),
              ],
            ),
          );
        }));
  }
}
