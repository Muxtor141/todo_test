import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskSlideAction extends StatelessWidget {
  final bool isNegativeAction;
  final IconData icon;
  final Function(BuildContext context) onPressed;

  const TaskSlideAction(
      {this.isNegativeAction = false,
      required this.icon,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => SlidableAction(flex: 5,
    autoClose: true,key:const ValueKey('sd'),
        borderRadius: BorderRadius.circular(6),
        onPressed: onPressed,
        backgroundColor:
            isNegativeAction ? const Color(0xFFFE4A49) :Colors.grey[200]!,
        foregroundColor: isNegativeAction ? Colors.white : Colors.black,
        icon: icon,
      );
}
