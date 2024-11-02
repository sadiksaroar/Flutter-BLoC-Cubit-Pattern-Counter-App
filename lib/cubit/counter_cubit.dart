import 'package:block/cubit/counter_cubit_state.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  int counter = 0;
  CounterCubit() : super(CounterInitiate());

  void counterIncrease() {
    counter++;
    emit(ConuterValueUpdate(counter: counter));
  }

  void counterdecrease() {
    counter--;
    emit(ConuterValueUpdate(counter: counter));
  }
}
