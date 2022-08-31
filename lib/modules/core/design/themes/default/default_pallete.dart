import '../../../core_module.dart';

enum PalleteColor {
  darkBlue,
  darkBlue2,
  blue,
  white,
}

extension PalletColorExt on PalleteColor {
  Color get getColor {
    switch (this) {
      case PalleteColor.blue:
        return const Color(0xFF82B3D4);
      case PalleteColor.darkBlue:
        return const Color(0xFF26343D);
      case PalleteColor.darkBlue2:
        return const Color(0xFF426F98);
      case PalleteColor.white:
        return const Color(0xFFFFFFFF);

      default:
        return const Color(0xFFCf2828);
    }
  }
}
