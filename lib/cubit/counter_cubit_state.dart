import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class CounterCubitState extends Equatable {
  const CounterCubitState();
}

class CounterInitiate extends CounterCubitState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

// ignore: must_be_immutable
class ConuterValueUpdate extends CounterCubitState {
  int counter;

  ConuterValueUpdate({required this.counter});

  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}
