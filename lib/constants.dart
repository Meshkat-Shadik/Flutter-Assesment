import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const bgPrimaryColor = Color.fromARGB(255, 247, 242, 255);
const bgWhite = Color(0xffffffff);
const fabMinusColor = Color(0xffFFBFDD);
const fabExpandedColor = Color(0xffFFCCE4);
const greyColor = Color(0xff646464);
const pinkColor = Color(0xffda2079);
const badgeErrorColor = Color(0xffC62828);
const badgeErrorShadeColor = Color(0xffffcccc);
const minusFabButtonColor = Color(0xffFFBFDD);

const floatingBtnGradient = LinearGradient(
  colors: [
    Color(0xff6210E1),
    Color(0xff1400AE),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: [0.0, 1.0],
  tileMode: TileMode.clamp,
);

//home text size
const double hTitleFontSize = 14;
const double hKroyBikroyLavFontSize = 8;
const double hKroyPriceFontSize = 16;
const double hBikroyPriceFontSize = 12;
const double hKroyPreviousFontSize = 12;
const double hLavFontSize = 12;
const double hFabQuantityFontSize = 14;
const double hBadgeFontSize = 14;

//details screen text size
const double dItemNameFontSize = 24;
const double dItemSubTitleFontSize = 14;
const double dKroyFontSize = 20;
const double dPageTitleFontSize = 20;
const double dBikroyLavFontSize = 14;
const double dBistaritoTitleFontSize = 20;
const double dEtiKinunFontSize = 16;
const double dBistaritoDescFontSize = 16;

//home text styles
const hBadgeStyle = TextStyle(
  color: badgeErrorColor,
  fontSize: hBadgeFontSize,
);

final hTitleStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  fontSize: hTitleFontSize,
);

final hkroyPriceStyle = GoogleFonts.poppins(
  color: pinkColor,
  fontSize: hKroyPriceFontSize,
  fontWeight: FontWeight.bold,
);

final hKroyBikroyLavTextStyle = GoogleFonts.poppins(
  color: greyColor,
  fontSize: hKroyBikroyLavFontSize,
  fontWeight: FontWeight.w400,
);

final hBikroyPriceStyle = GoogleFonts.poppins(
  color: greyColor,
  fontSize: hBikroyPriceFontSize,
  fontWeight: FontWeight.w600,
);

final hKroyPreviousStyle = GoogleFonts.poppins(
  color: pinkColor,
  fontSize: hKroyPreviousFontSize,
  fontWeight: FontWeight.w500,
  decoration: TextDecoration.lineThrough,
);

const bageErrorTextStyle = TextStyle(
  color: badgeErrorColor,
  fontSize: hBadgeFontSize,
  fontWeight: FontWeight.w500,
);

const hQuantityTextStyle = TextStyle(
  color: pinkColor,
  fontSize: hFabQuantityFontSize,
  fontWeight: FontWeight.w500,
);

//details screen text style
const detailsProductTitle = TextStyle(
  color: Color(0xff19181B),
  fontSize: 24,
  fontWeight: FontWeight.w600,
);

const detailsTitle = TextStyle(
  color: Color(0xff323232),
  fontSize: 20,
  fontWeight: FontWeight.w600,
);

const detailsText = TextStyle(
  color: greyColor,
  fontWeight: FontWeight.w400,
  fontSize: 16,
);
