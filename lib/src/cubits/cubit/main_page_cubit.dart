import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_page_state.dart';

class MainPageCubit extends Cubit<MainPageState> {
  MainPageCubit()
      : super(const MainPageState(
          pageColor: Colors.white,
          textColor: Colors.black,
          textPressCounter: 0,
        ));

  void generateColor() {
    final rand = Random();

    final red = rand.nextInt(256);
    final green = rand.nextInt(256);
    final blue = rand.nextInt(256);

    final pageColor = Color.fromARGB(255, red, green, blue);
    final textColor = Color.fromARGB(255, 255 - red, 255 - green, 255 - blue);

    emit(state.copyWith(pageColor: pageColor, textColor: textColor));
  }

  void resetCounter() => emit(state.copyWith(textPressCounter: 0));

  void textPressCount() {
    if (state.textPressCounter < 5) {
      emit(state.copyWith(textPressCounter: state.textPressCounter + 1));
    } else {
      emit(state.copyWith(textPressCounter: 1));
    }
  }
}
