import 'package:flutter/material.dart';

const bgPrimaryColor = Color(0xffE5E5E5);
const bgWhite = Color(0xffffffff);
const fabMinusColor = Color(0xffFFBFDD);
const fabExpandedColor = Color(0xffFFCCE4);
const greyColor = Color(0xff646464);
const pinkColor = Color(0xffda2079);
const badgeErrorColor = Color(0xffC62828);

const floatingBtnGradient = LinearGradient(
    colors: [
      Color(0xff6210E1),
      Color(0xff1400AE),
    ],
    begin: FractionalOffset(0.0, 0.0),
    end: FractionalOffset(0.5, 0.0),
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp);

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

const hTitleStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: hTitleFontSize,
);

const hkroyPriceStyle = TextStyle(
  color: pinkColor,
  fontSize: hKroyPriceFontSize,
  fontWeight: FontWeight.w700,
);

const hBikroyPriceStyle = TextStyle(
  color: Color(0xff646464),
  fontSize: hBikroyPriceFontSize,
  fontWeight: FontWeight.w600,
);

const hKroyPreviousStyle = TextStyle(
  color: pinkColor,
  fontSize: hKroyPreviousFontSize,
  fontWeight: FontWeight.w500,
  decoration: TextDecoration.lineThrough,
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
