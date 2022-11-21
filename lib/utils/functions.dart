import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:test_todo/core/assets/colors.dart';

String safeDate(String date, String pattern) {
  try {
    var result = Jiffy(date).format(pattern);
    return result;
  } catch (e) {
    return '';
  }
}

showBottomSnackBar(BuildContext context, {required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: mainDark,
      content: Text(
        message,
        style: Theme.of(context).textTheme.headline2!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
      )));
}
