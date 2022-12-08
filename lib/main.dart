import 'package:flutter/material.dart';
import 'package:flutter_application_3/cubit/counter_cubit.dart';
import 'package:flutter_application_3/cubit/history_cubit.dart';
import 'package:flutter_application_3/cubit/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

Brightness brightness = Brightness.light;
Icon icon = Icon(Icons.light_mode);
int number = 1;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(create: (context) => HistoryCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          if (state is UpdateTheme) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: MyHomePage(),
              theme: ThemeData(brightness: state.brightness),
            );
          }
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MyHomePage(),
            theme: ThemeData(brightness: Brightness.light),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                if (state is UpdateCounter) {
                  return Text(state.counter.toString(),
                      style: Theme.of(context).textTheme.headline4);
                }
                return Container();
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterCubit>().setCounter(number * -1);
                    context
                        .read<HistoryCubit>()
                        .setHistory(number * -1, brightness);
                  },
                  child: const Text("-"),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterCubit>().setCounter(number);
                    context.read<HistoryCubit>().setHistory(number, brightness);
                  },
                  child: const Text("+"),
                ),
              ],
            ),
            BlocBuilder<HistoryCubit, HistoryState>(
              builder: (context, state) {
                if (state is UpdateHistory) {
                  return Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: state.history,
                      ),
                    ),
                  );
                }
                return Container();
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (brightness == Brightness.dark) {
            brightness = Brightness.light;
            icon = Icon(Icons.dark_mode);
            number = 1;
          } else {
            brightness = Brightness.dark;
            icon = Icon(Icons.light_mode);
            number = 2;
          }
          context.read<ThemeCubit>().setBrigthness(brightness);
        },
        child: icon,
      ),
    );
  }
}
