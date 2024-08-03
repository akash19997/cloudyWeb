import 'package:flutter/material.dart';
import 'package:gerywhite/core/constants/utils/size_utils.dart';
import 'package:gerywhite/feature/about_us/presentation/about_us.dart';
import 'package:gerywhite/feature/contact_us/presentation/contact_us.dart';
import 'package:gerywhite/feature/help_center/presentation/help_center.dart';
import 'package:gerywhite/feature/otp/presentation/otp_page.dart';
import 'package:gerywhite/feature/privacy_policy/presentation/privacy_policy.dart';
import 'package:gerywhite/feature/select_type/presentaion/select_type_widget.dart';
import 'package:gerywhite/feature/signup/presentation/signup_screen.dart';
import 'package:gerywhite/feature/terms_conditions/presentation/terms_conditions.dart';
import 'package:gerywhite/feature/welcome/presentation/welcome_page.dart';
import 'package:gerywhite/widgets/custom_button.dart';

import 'core/constants/enum/custom_app_button_enum.dart';
import 'core/theme/app_text_theme.dart';
import 'injection_container.dart';
import 'core/navigation/route.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GreyWhite',
            style: AppStyle.txtRobotoRegular17.copyWith(
              color: Colors.white,
              fontSize: getFontSize(
                20,
              ),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          AppButton(
            buttonWidth: 300,
            buttonType: AppButtonType.PRIMARY,
            child: const Text(
              'Submit',
              textAlign: TextAlign.center,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomePage()),
              );
              //   },
            },
          ),
          const SizedBox(
            height: 10,
          ),
          AppButton(
            buttonWidth: 300,
            buttonType: AppButtonType.PRIMARY,
            child: const Text('OTP'),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => OtpScreen()),
              // );
              //   },
            },
          ),
          const SizedBox(
            height: 10,
          ),
          AppButton(
            buttonWidth: 300,
            buttonType: AppButtonType.PRIMARY,
            child: const Text('Select Screen Type'),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => SelectTypeScreen()),
              // );
              //   },
            },
          ),
          const SizedBox(
            height: 10,
          ),
          AppButton(
            buttonWidth: 300,
            buttonType: AppButtonType.PRIMARY,
            child: const Text('Signup Screen '),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => SignUpScreen()),
              // );
              //   },
            },
          ),
          const SizedBox(
            height: 10,
          ),
          AppButton(
            buttonWidth: 300,
            buttonType: AppButtonType.PRIMARY,
            child: const Text('Contact Us '),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUsScreen()),
              );
              //   },
            },
          ),
          const SizedBox(
            height: 10,
          ),
          AppButton(
            buttonWidth: 300,
            buttonType: AppButtonType.PRIMARY,
            child: const Text('Privacy Us '),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrivacyPolicyScreen()),
              );
              //   },
            },
          ),
          const SizedBox(
            height: 10,
          ),
          AppButton(
            buttonWidth: 300,
            buttonType: AppButtonType.PRIMARY,
            child: const Text('Terms and Condtion '),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TermsAndConditionScreen()),
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          AppButton(
            buttonWidth: 300,
            buttonType: AppButtonType.PRIMARY,
            child: const Text('About Us '),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutUs()),
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          AppButton(
            buttonWidth: 300,
            buttonType: AppButtonType.PRIMARY,
            child: const Text('Help Center '),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpCenterScreen()),
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          AppButton(
            buttonWidth: 300,
            buttonType: AppButtonType.PRIMARY,
            child: const Text('Demo Screen '),
            onPressed: () {
              getIt<AppRouter>().replaceAll([HomeContainerScreenRoute()]);
            },
          ),
        ]),
      ),
    );
  }
}
