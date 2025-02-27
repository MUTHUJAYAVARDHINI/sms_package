class AppSizes {
  AppSizes._();
  static double defaultWidth = 375;
  static double defaultHeight = 812;

  // Input field
  static const double inputFieldRadius = 4;
  static const double spaceBtwInputFields = 16.0;

  static const double size_01 = 1;
  static const double size_02 = 2;
  static const double size_04 = 4;
  static const double size_06 = 6;
  static const double size_08 = 8.0;
  static const double size_10 = 10.0;
  static const double size_12 = 12;
  static const double size_14 = 14;
  static const double size_15 = 15;
  static const double size_16 = 16;
  static const double size_18 = 18;
  static const double size_20 = 20;
  static const double size_21 = 21;
  static const double size_22 = 22;
  static const double size_24 = 24;
  static const double size_26 = 26;
  static const double size_28 = 28;
  static const double size_30 = 30;
  static const double size_32 = 32;
  static const double size_36 = 36.0;
  static const double size_40 = 40;
  static const double size_45 = 45;
  static const double size_48 = 48;
  static const double size_50 = 50;
  static const double size_52 = 52;
  static const double size_56 = 56;
  static const double size_60 = 60;
  static const double size_70 = 70;
  static const double size_75 = 75;
  static const double size_76 = 76;
  static const double size_86 = 86;
  static const double size_90 = 90;
  static const double size_100 = 100;
  static const double size_105 = 105;
  static const double size_120 = 120;
  static const double size_130 = 130;
  static const double size_140 = 140;
  static const double size_145 = 145;
  static const double size_150 = 150;
  static const double size_160 = 160;
  static const double size_152 = 152;
  static const double size_170 = 170;
  static const double size_194 = 194;
  static const double size_200 = 200;
  static const double size_202 = 202;
  static const double size_220 = 220;
  static const double size_236 = 236;
  static const double size_240 = 240;
  static const double size_245 = 245;
  static const double size_300 = 300;
  static const double size_350 = 350;
  static const double size_400 = 400;
  static const double size_500 = 500;
  static const double size_600 = 600;
  static const double sizeLoginLogo = 229;

  //  static getSize(isTab, size, {dynamic ratio}) {
  //   return isTab ? (size / 2) + size : size;
  // }

  // static getWidth(isTab, size, {dynamic ratio}) {
  //   return isTab ? (size / 2) + size : size;
  // }

  // static getHeight(isTab, size, {dynamic ratio}) {
  //   return isTab ? (size / 2) + size : size;
  // }

  // static getIconSize(isTab, size,{dynamic ratio}) {
  //   return isTab ? (size / ratio??1) + size : size;
  // }

  // static getFontSize(isTab, size, {dynamic ratio}) {
  //   return isTab ? (size / 4) + size : size;
  // }
}

getSize(isTab, size, {dynamic ratio}) {
  return isTab ? (size / (ratio ?? 2)) + size : size;
}

getWidth(isTab, size, {dynamic ratio}) {
  return isTab ? (size / (ratio ?? 2)) + size : size;
}

getHeight(isTab, size, {dynamic ratio}) {
  return isTab ? (size / (ratio ?? 2)) + size : size;
}

getIconSize(isTab, size, {dynamic ratio}) {
  return isTab ? (size / (ratio ?? 2)) + size : size;
}

getFontSize(isTab, size, {dynamic ratio}) {
  return isTab ? (size / (ratio ?? 2)) + size : size;
}
