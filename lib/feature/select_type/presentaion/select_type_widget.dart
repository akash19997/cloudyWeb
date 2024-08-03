import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/theme/app_decoration.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../injection_container.dart';
import '../../../core/navigation/route.dart';
import '../../../widgets/custom_image.dart';

class SelectTypeScreen extends StatefulWidget {
  final String mobNo;
  const SelectTypeScreen({super.key, required this.mobNo});

  @override
  State<SelectTypeScreen> createState() => _SelectTypeScreenState();
}

class _SelectTypeScreenState extends State<SelectTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SingleChildScrollView(
          child: SizedBox(
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 100),
                Image.asset(
                  ImageConstant.imgLayer1,
                  width: 120.00,
                  height: 120.00,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 30),
                Text(
                  "Choose your account type",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoBold24Bluegray700,
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      decoration: AppDecoration.outlineGray300.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            ImageConstant.imgCart,
                            allowDrawingOutsideViewBox: true,
                          ),
                          Text(
                            "Manufacturer",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular15,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await getIt<AppRouter>().push(SignUpScreenRoute(
                          mobNo: widget.mobNo,
                        ));
                      },
                      child: Container(
                        height: 100,
                        width: 150,
                        decoration: AppDecoration.outlinePink700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              ImageConstant.imgGroup36720,
                              allowDrawingOutsideViewBox: true,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Buyer",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular15Pink700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Our ",
                        style: TextStyle(
                          color: ColorConstant.blueGray300,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            await getIt<AppRouter>()
                                .push(const TermsAndConditionScreenRoute());
                          },
                        text: "Terms & Conditions",
                        style: TextStyle(
                          color: ColorConstant.pink700Primary,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: " and ",
                        style: TextStyle(
                          color: ColorConstant.blueGray300,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            await getIt<AppRouter>()
                                .push(const PrivacyPolicyScreenRoute());
                          },
                        text: "Privacy Policy",
                        style: TextStyle(
                          color: ColorConstant.pink700Primary,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
