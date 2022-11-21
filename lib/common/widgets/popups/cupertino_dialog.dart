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
            onTapPositive: () {
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
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline1!.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
      ),
      content: Text(
        description,
        style: Theme.of(context).textTheme.headline1!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
      ),
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
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
              ))),
        ),
        GestureDetector(
          onTap: onTapPositive,
          child: Container(
              height: 44,
              child: Center(
                  child: Text(
                positiveButtonTitle,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
              ))),
        ),
      ],
    );
  }
}
