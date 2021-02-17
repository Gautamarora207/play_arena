import 'package:flutter/material.dart';

//color constants
const Color white = Colors.white;
const Color black = Colors.black;
const Color blue = Colors.blue;
Color lightGrey = Colors.grey[100];

List<Color> colors = [
  Color(0xFF60CAFF),
  Color(0xFFFF9B9E),
  Color(0xFFCC9EFF),
  Color(0xFFFFA077),
];

//text style constants
const regularTextStyle = TextStyle(
  fontSize: 15.0,
  fontFamily: GOOGLE_SANS_MED,
);
const subHeaderTextStyle = TextStyle(
  fontSize: 20.0,
  fontFamily: GOOGLE_SANS_MED,
);
const HeaderTextStyle = TextStyle(
  fontSize: 25.0,
  fontFamily: GOOGLE_SANS_MED,
);
const subRegularTextStyle = TextStyle(
  fontSize: 10.0,
  fontFamily: GOOGLE_SANS_MED,
);

//font family constants
const String GOOGLE_SANS_MED = 'googlesansmed';

//url constants
const String URL =
    'http://playonnuat-env.eba-ernpdw3w.ap-south-1.elasticbeanstalk.com/api/v1/establishment/test/list';
