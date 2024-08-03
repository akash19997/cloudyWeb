import 'package:flutter/material.dart';
import 'package:gerywhite/core/constants/color/color_constant.dart';

class DataNotFoundPage extends StatelessWidget {
  final String? message;
  const DataNotFoundPage({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          const SizedBox(height: 150),
          Icon(Icons.error, size: 150, color: ColorConstant.pink700Primary),
          const SizedBox(height: 15),
          Center(
            child: Text(
              message ?? 'Please Try Again !!!',
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: ColorConstant.pink700Primary, fontSize: 20),
            ),
          ),
          const SizedBox(height: 70),
        ]));
  }
}
