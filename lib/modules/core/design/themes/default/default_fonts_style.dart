import '../../../core_module.dart';

enum DefaultFontStyle {
  fields,
  titleBig,
  button,
  titleNormal,
  dialogSmall,
}

extension FontStyleExt on DefaultFontStyle {
  TextStyle get getText {
    switch (this) {
      case DefaultFontStyle.fields:
        return const TextStyle(
          // fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: 0,
        );
      case DefaultFontStyle.titleBig:
        return const TextStyle(
          // fontFamily: 'Roboto',
          fontSize: 24,
          fontWeight: FontWeight.w900,
          letterSpacing: 0,
        );
      case DefaultFontStyle.button:
        return const TextStyle(
          // fontFamily: 'Roboto',
          fontSize: 24,
          fontWeight: FontWeight.w800,
          letterSpacing: 0,
        );
      case DefaultFontStyle.titleNormal:
        return const TextStyle(
          // fontFamily: 'Roboto',
          fontSize: 24,
          fontWeight: FontWeight.w500,
          letterSpacing: 0,
        );
      case DefaultFontStyle.dialogSmall:
        return const TextStyle(
          // fontFamily: 'Roboto',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0,
        );
      default:
        return const TextStyle(
          // fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
        );
    }
  }
}
