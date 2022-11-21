import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

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
      content: Text(
    message,
    style: Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
  )));
}
