import 'package:flutter/material.dart';

class AppColor {
  AppColor();

  /// Light Color
  static Color defaultHeaderOSColorLight =
      const Color(0xFF45C152); // light green
  static Color primaryColorLight = const Color(0xFF13862B); // dark green
  static Color accentColorLight = const Color(0xFFF47458); // orange
  static Color dividerColorLight = const Color(0xFFF0F0F0); // grey
  static Color primaryTextColorLight = const Color(0xFF333333); // black gray
  static Color secondTextColorLight = const Color(0xFFFFFFFF); // white
  static Color thirdTextColorLight = const Color(0xFF000000); // black
  static Color fourthTextColorLight = const Color(0xFF13862B); // green
  static Color fifthTextColorLight = const Color(0xFF888888); // gray
  static Color sixTextColorLight = const Color(0xFF4F4F4F); // gray
  static Color sevenTextColorLight = const Color(0xFF1B1B1E); // gray
  static Color eightTextColorLight = const Color(0xFF019748); // green
  static Color niceTextColorLight = const Color(0xFF444444);
  static Color primaryHintColorLight = const Color(0xFF888888); // gray
  static Color primaryBorderColorLight = const Color(0xFFF0F0F0); // gray
  static Color primarySelectedColorLight = const Color(0xFFADADAD); // gray
  static Color primaryBackgroundColorLight = const Color(0xFFF2F4F8); // gray
  static Color disabledColorLight = const Color(0xFFADADAD); // gray
  static Color errorColorLight = const Color(0xFFEE0707); // red
  static Color cursorColorLight = const Color(0xFF000000); // black
  static Color secondBackgroundColorLight = const Color(0xFFFFFFFF); // white
  static Color shadowColorLight = const Color(0x42000000); // black26
  static Color disabledButtonColorLight =
      const Color(0xFFE1EBE4); // light green,
  static Color dividerColorLightBottomSheet = const Color(0xFFD1D1D1); // grey
  static Color backgroundFormGreyColor = const Color(0xffC2C7CF);
  static Color dividerColorLightListBank = const Color(0xfff3f5f9);
  static Color backgroundButtonYellowColor = const Color(0xffF8C400);
  static Color activeButtonMonthColor = const Color(0xFFD06400);
  static Color textActiveButtonMonthColor = const Color(0xFFE49C59);
  static Color textNotActiveButtonPackagePacColor = const Color(0xFFBDBDBD);
  static Color buttonOnchangeFormColor = const Color(0xFF31A94A);
  static Color notActiveProductColor = const Color(0xffC1C1C1);
  //
  static Color tileOrangeColor = const Color(0xffE49C59);
  static Color contractInfoColor = const Color(0xff1199E5);
  static Color NotificationExpiryColor = const Color(0xffE96262);
  static Color buttonProductDetailColor = const Color(0xffDFF1E4);
  static Color appbarSliderColor = const Color(0xff62BD7A);
  static Color doctorServiceColor = const Color(0xffDEEEE2);
  static Color typeCustomerColor = const Color(0xffF2F5F9);
  static Color myHeartColor = const Color(0xffFF6B6B);
static Color kBlackColor = const Color(0xFF393939);
static Color kLightBlackColor = const Color(0xFF8F8F8F);
static Color kIconColor = const Color(0xFFF48A37);
static Color kProgressIndicator = const Color(0xFFBE7066);

final kShadowColor = const Color(0xFFD3D3D3).withOpacity(.84);

  static const Color color0ADC90 = Color(0xff0ADC90);
  static const Color primary = Color(0xff3DC459);
  static const Color accent = Color(0xFFFB6107);
  static const Color gray1 = Color(0xff888888);
  static const Color color45C152 = Color(0xFF45C152);
  static const Color greenDark = Color(0xFF13862B);
  static const Color greyE1EBE4 = Color(0xFFE1EBE4);
  static const Color greenF1FFF4 = Color(0xFFF1FFF4);
  static const Color grayF2F2F2 = Color(0xffF2F2F2);
  static const Color textBlack = Color(0xff333333);

  //red
  static const Color redPrimary = Color(0xffFF6B00);
  static const Color redF5D7C6 = Color(0xffF5D7C6);
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}
