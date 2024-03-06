part of 'color_cubit.dart';

class ColorState extends Equatable {
  final Color pageColor;
  final Color textColor;

  const ColorState({required this.pageColor, required this.textColor});

  @override
  List<Object?> get props => [pageColor, textColor];
  ColorState copyWith({Color? pageColor, Color? textColor}) => ColorState(
      pageColor: pageColor ?? this.pageColor,
      textColor: textColor ?? this.textColor);
}
