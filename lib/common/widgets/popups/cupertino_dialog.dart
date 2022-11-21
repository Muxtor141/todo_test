import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showIosDialog(BuildContext context,
    {required String title,
    required String description,
    required String positiveButtonTitle,
    required Function(BuildContext context) onTapPositive}) {
  showDialog(
      context: context,
      builder: (dialogContext) {
        return IosDialog(
            title: title,
            description: description,
            onTapPositive: (){
              onTapPositive(dialogContext);
            },
            positiveButtonTitle: positiveButtonTitle);
      });
}

class IosDialog extends StatelessWidget {
  final String title;
  final String description;
  final String positiveButtonTitle;
  final VoidCallback onTapPositive;

  const IosDialog(
      {required this.title,
      required this.description,
      required this.onTapPositive,
      required this.positiveButtonTitle,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(description),
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SizedBox(
              height: 44,
              child: Center(
                  child: Text(
                'Cancel',
                style: TextStyle(
                    fontSize: 14, color: Colors.blue, decorationThickness: 0),
              ))),
        ),
        GestureDetector(
          onTap: onTapPositive,
          child: Container(
              height: 44,
              child: Center(
                  child: Text(
                positiveButtonTitle,
                style: TextStyle(
                    fontSize: 14, color: Colors.blue, decorationThickness: 0),
              ))),
        ),
      ],
    );
  }
}
