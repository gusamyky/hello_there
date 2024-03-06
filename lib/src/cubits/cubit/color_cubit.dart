import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'color_state.dart';

class ColorCubit extends Cubit<ColorState> {
  ColorCubit()
      : super(
            const ColorState(pageColor: Colors.white, textColor: Colors.black));

  void generateColor() {
    final rand = Random();

    final alpha = rand.nextInt(256);
    final red = rand.nextInt(256);
    final green = rand.nextInt(256);
    final blue = rand.nextInt(256);

    final pageColor = Color.fromARGB(alpha, red, green, blue);
    final textColor = Color.fromARGB(255, 255 - red, 255 - green, 255 - blue);

    emit(state.copyWith(pageColor: pageColor, textColor: textColor));
  }
}
