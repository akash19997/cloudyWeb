import 'package:flutter/material.dart';
import 'package:gerywhite/core/constants/color/color_constant.dart';
import 'package:stylish_dialog/stylish_dialog.dart';

class SnackBarHelper {
  Future<void> showStylishDialog(
      {required BuildContext context,
      required String titile,
      required String message,
      required StylishDialogType stylishDialogType}) async {
    //   final snackBar = SnackBar(
    //     content: Text(
    //       snackBarText,
    //     ),
    //     backgroundColor: ColorConstant.black900,
    //     behavior: SnackBarBehavior.floating,
    //   );
    //   ScaffoldMessenger.of(context).showSnackBar(snackBar);

    final showdialogData = StylishDialog(
      context: context,
      alertType: stylishDialogType,
      style: DefaultStyle(
        progressColor: Colors.teal,
      ),
      title: Text(titile),
      content: Text(message),
    ).show();
  }

  Future<void> showStylishDialogEnquiry(
      {required BuildContext context,
      required String titile,
      required String message,
      required StylishDialogType stylishDialogType}) async {
    final showdialogData = StylishDialog(
      context: context,
      alertType: stylishDialogType,
      style: DefaultStyle(
        progressColor: Colors.teal,
      ),
      title: Text(titile),
      content: Text(
        message,
        textAlign: TextAlign.center,
      ),
    ).show();
  }

  Future alertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            title: const Icon(
              Icons.check_circle_rounded,
              color: Colors.green,
              size: 50,
            ),
            actions: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Thank you',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'We haved received your request, out team will get in touch soon!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.grey.shade700),
                    ),
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ],
          );
        });
  }

  void showStylishDialogwithbuttonLogin(
      {required BuildContext context,
      required String titile,
      required String message,
      required bool isDismiss,
      required Widget confirmButton,
      required StylishDialogType stylishDialogType}) {
    final showdialogData = StylishDialog(
            dismissOnTouchOutside: isDismiss,
            context: context,
            alertType: stylishDialogType,
            style: DefaultStyle(
              progressColor: Colors.teal,
            ),
            title: Text(titile),
            content: Text(
              message,
              textAlign: TextAlign.center,
            ),
            confirmButton: confirmButton)
        .show();
  }
}
