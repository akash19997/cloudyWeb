import 'package:flutter/material.dart';

import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/enum/custom_app_button_enum.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../widgets/appbar/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorConstant.gray5001,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(65.0),
            child: CustomAppBar(
              title: 'Help Center',
              backbutton: true,
              onPressed: () {
                Navigator.of(context).pop();
              },
            )),
        body: SingleChildScrollView(
          child: SizedBox(
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        "Product",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoBold14Gray90002,
                      ),
                      const SizedBox(height: 10),
                      Align(
                        child: Stack(
                          children: [
                            const SizedBox(height: 10),
                            Container(
                              width: 335.00,
                              decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  width: 335.00,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 7),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur?",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium14,
                                        ),
                                        const SizedBox(height: 7),
                                        Text(
                                          "Lorem ipsum dolor sit  amet, consectetur \u000bSagittis id consectetur?",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium14,
                                        ),
                                        const SizedBox(height: 7),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur \nSagittis id consectetur?",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium14,
                                        ),
                                        const SizedBox(height: 7),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Shipping & Delivery",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoBold14Gray90002,
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.center,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              width: 335.00,
                              decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Align(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 7),
                                    Text(
                                      "How do I track my order?",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium14,
                                    ),
                                    const SizedBox(height: 7),
                                    Text(
                                      "How do I find my order details?",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium14,
                                    ),
                                    const SizedBox(height: 7),
                                    Text(
                                      "How do I return my order?",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium14,
                                    ),
                                    const SizedBox(height: 7),
                                    Text(
                                      "How do I place a request for order \u000breplacement?",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium14,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Account & Profile",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoBold14Gray90002,
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 335.00,
                          decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                              borderRadius: BorderRadius.circular(8)),
                          // decoration: AppDecoration.outlineBlack9001a.copyWith(
                          //   borderRadius: BorderRadiusStyle.roundedBorder8,
                          // ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(height: 7),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur \nSagittis id consectetur?",
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14,
                                ),
                                const SizedBox(height: 7),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur?",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      AppButton(
                        buttonWidth: 335,
                        buttonType: AppButtonType.PRIMARY,
                        child: Text(
                          'Submit',
                          style: AppStyle.txtRobotoRegular14,
                        ),
                        onPressed: () {
                          // if (_formKey.currentState!.validate()) {}
                        },
                      ),
                      const SizedBox(height: 50)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
