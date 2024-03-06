part of 'main_page_cubit.dart';

class MainPageState extends Equatable {
  final Color pageColor;
  final Color textColor;
  final int textPressCounter;

  const MainPageState(
      {required this.pageColor,
      required this.textColor,
      required this.textPressCounter});

  @override
  List<Object?> get props => [pageColor, textColor, textPressCounter];
  MainPageState copyWith(
          {Color? pageColor, Color? textColor, int? textPressCounter}) =>
      MainPageState(
        pageColor: pageColor ?? this.pageColor,
        textColor: textColor ?? this.textColor,
        textPressCounter: textPressCounter ?? this.textPressCounter,
      );
}
