import 'package:flutter/material.dart';
import 'package:gerywhite/core/helper/layout_helper.dart';
import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/enum/custom_app_button_enum.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/theme/app_decoration.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../widgets/appbar/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_formfield.dart';
import '../../../widgets/drawer/drawer.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController messageController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(65.0),
            child: CustomAppBar(
              title: 'Contact Us',
              backbutton: true,
              onPressed: () {
                Navigator.of(context).pop();
              },
            )),
        // PreferredSize(
        //     preferredSize: Size.fromHeight(65.0),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 900,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    Text(
                      "Get in touch with us",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBold25,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing \nelit, sed do eiusmod tempor",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular14Bluegray20001,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Find us at",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBold16,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          ImageConstant.imgGroup36674,
                          height: 20,
                          width: 20,
                        ),
                        Text(
                          "70 Mohamedi Manzil, 1st Flr Room No 6 Moha\u000bmedali Road, Mandvi, Mumbai 400003",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular14Bluegray20001,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Reach out to us at",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBold16,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          ImageConstant.imgPath7244,
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "contact@greywhite.com",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular14Bluegray20001,
                        ),
                        const SizedBox(width: 10),
                        Image.asset(
                          ImageConstant.imgVector,
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          " 022-45427345",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular14Bluegray20001,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: LayoutHelper.getWidth(context, fraction: .90),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                        color: ColorConstant.whiteA700,
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstant.black9001a,
                            spreadRadius: 2.00,
                            blurRadius: 2.00,
                            offset: const Offset(
                              0,
                              2,
                            ),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Contact Us",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoBold16,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Name",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium14,
                            ),
                            const SizedBox(height: 10),
                            CustomFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "";
                                }
                                return null;
                              },
                              nameController: nameController,
                              hintText: "Enter Name",
                              width: 350,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Email address",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium14,
                            ),
                            const SizedBox(height: 10),
                            CustomFormField(
                              height: 48,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "";
                                }
                                return null;
                              },
                              nameController: emailController,
                              hintText: "Enter Email Address",
                              width: 350,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Message",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium14,
                            ),
                            const SizedBox(height: 10),
                            CustomFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "";
                                }
                                return null;
                              },
                              nameController: messageController,
                              hintText: "Enter Message",
                              width: 350,
                            ),
                            const SizedBox(height: 15),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppButton(
                                  buttonWidth: 335,
                                  buttonType: AppButtonType.PRIMARY,
                                  child: Text(
                                    'Submit',
                                    style: AppStyle.txtRobotoRegular14,
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {}
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(height: 50)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
