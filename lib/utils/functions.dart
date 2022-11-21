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

showBottomSnackBar(BuildContext context,{required String message}){
  ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(
          content:
          Text(message)));
}
