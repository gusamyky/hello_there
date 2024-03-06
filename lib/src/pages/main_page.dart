import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hello_there/src/cubits/cubit/main_page_cubit.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainPageCubit>(
      create: (context) => MainPageCubit(),
      child: BlocConsumer<MainPageCubit, MainPageState>(
        listener: (BuildContext context, MainPageState state) {
          if (state.textPressCounter == 5) {
            Fluttertoast.showToast(msg: 'General Kenobi!');
            context.read<MainPageCubit>().resetCounter();
          }
        },
        listenWhen: (previous, current) =>
            previous.pageColor != current.pageColor ||
            previous.textPressCounter != current.textPressCounter,
        builder: (BuildContext context, state) {
          return GestureDetector(
            onTap: () => context.read<MainPageCubit>().generateColor(),
            child: Scaffold(
              backgroundColor: state.pageColor,
              body: Center(
                child: TextButton(
                  onPressed: () =>
                      context.read<MainPageCubit>().textPressCount(),
                  child: Text(
                    'Hello There!',
                    style: TextStyle(color: state.textColor),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
