import 'package:flutter/material.dart';
import 'package:flutter_assignment/constants/constants.dart';

Widget buildError(
  BuildContext context,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Center(
      child: Text(
        "Looks like you are not connected to the Internet.",
        style: HeaderTextStyle,
      ),
    ),
  );
}
