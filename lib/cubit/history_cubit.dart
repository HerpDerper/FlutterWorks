import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'history_state.dart';

class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit() : super(HistoryInitial());

  List<Text> history = [];

  void setHistory(int number, Brightness brightness) {
    String theme =
        brightness == Brightness.light ? "Светлая тема" : "Темная тема";
    String action = '${history.length + 1} ${DateTime.now()} $theme $number';
    history.add(Text(action));
    emit(UpdateHistory(history));
  }
}
