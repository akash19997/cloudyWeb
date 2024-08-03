import 'package:flutter/material.dart';

import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../widgets/appbar/custom_app_bar.dart';
import '../../../widgets/drawer/drawer.dart';

class TermsAndConditionScreen extends StatefulWidget {
  const TermsAndConditionScreen({super.key});

  @override
  State<TermsAndConditionScreen> createState() =>
      _TermsAndConditionScreenState();
}

class _TermsAndConditionScreenState extends State<TermsAndConditionScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        drawer: const LeftMenuOneDraweritem(),
        key: _key,
        backgroundColor: ColorConstant.whiteA700,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(65.0),
            child: CustomAppBar(
              title: 'Terms and Conditons',
              backbutton: true,
              onPressed: () {
                Navigator.of(context).pop();
              },
            )),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Image.asset(
                  ImageConstant.imgLayer1,
                  width: 120.00,
                  height: 120.00,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing \nelit, sed do eiusmod tempor incididunt ut labore et \ndolore magna aliqua. Sagittis id consectetur purus ut \nfaucibus pulvinar elementum integer. Sociis natoque \npenatibus et magnis dis parturient montes nascetur. \nMontes nascetur ridiculus mus mauris vitae ultricies \nleo integer malesuada. ",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular14Bluegray20001,
                      textScaleFactor: 1.2,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Arcu risus quis varius quam.",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold14,
                    ),
                    const SizedBox(height: 7),
                    Text(
                      textScaleFactor: 1.2,
                      "Lorem ipsum dolor sit amet, consectetur adipiscing \nelit, sed do eiusmod tempor incididunt ut labore et \ndolore magna aliqua. Sagittis id consectetur purus ut \nfaucibus pulvinar elementum integer. Sociis natoque \npenatibus et magnis dis parturient montes nascetur. \nMontes nascetur ridiculus mus mauris vitae ultricies \nleo integer malesuada. ",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular14Bluegray20001,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Arcu risus quis varius quam.",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold14,
                    ),
                    const SizedBox(height: 7),
                    Text(
                      textScaleFactor: 1.2,
                      "Lorem ipsum dolor sit amet, consectetur adipiscing \nelit, sed do eiusmod tempor incididunt ut labore et \ndolore magna aliqua. Sagittis id consectetur purus ut \nfaucibus pulvinar elementum integer. Sociis natoque \npenatibus et magnis dis parturient montes nascetur. \nMontes nascetur ridiculus mus mauris vitae ultricies \nleo integer malesuada. ",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular14Bluegray20001,
                    ),
                  ],
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
