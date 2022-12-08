part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class UpdateCounter extends CounterState {
  final int counter;

  UpdateCounter(this.counter);
}
