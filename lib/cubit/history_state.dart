part of 'history_cubit.dart';

@immutable
abstract class HistoryState {}

class HistoryInitial extends HistoryState {}

class UpdateHistory extends HistoryState {
  final List<Text> history;

  UpdateHistory(this.history);
}
