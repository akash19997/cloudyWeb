import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:gerywhite/core/theme/app_text_theme.dart';

import '../../core/constants/color/color_constant.dart';
import '../../core/constants/image/image_constant.dart';
import '../../core/constants/utils/size_utils.dart';
import '../../core/helper/layout_helper.dart';
import '../../core/navigation/route.dart';
import '../../core/theme/app_decoration.dart';
import '../../injection_container.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    required this.backbutton,
    this.onPressed,
  }) : super(key: key);
  final String title;
  final void Function()? onPressed;
  final bool backbutton;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      title: Text(
        widget.title,
        style: AppStyle.txtLatoBold12.copyWith(fontSize: 15),
      ),
      flexibleSpace: Container(
        height: 150.00,
        width: size.width,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30.00),
                bottomRight: Radius.circular(30.00)),
            gradient: ColorConstant.gradientColor),
      ),
      leading: widget.backbutton
          ? InkWell(
              onTap: widget.onPressed,
              child: Padding(
                padding: const EdgeInsets.only(top: 6.0, left: 10),
                child: SvgPicture.asset(
                  fit: BoxFit.scaleDown,
                  ImageConstant.imgArrowleft,
                  height: 30,
                  width: 30,
                ),
              ),
            )
          : InkWell(
              onTap: widget.onPressed,
              child: Padding(
                padding: const EdgeInsets.only(top: 7.0, left: 10),
                child: SvgPicture.asset(
                  fit: BoxFit.scaleDown,
                  ImageConstant.imgMenu,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
    );
  }
}

class CustomAppBarSearch extends StatefulWidget {
  const CustomAppBarSearch({
    Key? key,
    required this.title,
    this.onPressed,
    required this.backbutton,
  }) : super(key: key);
  final String title;
  final void Function()? onPressed;
  final bool backbutton;
  @override
  State<CustomAppBarSearch> createState() => _CustomAppBarSearchState();
}

class _CustomAppBarSearchState extends State<CustomAppBarSearch> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        height: 150.00,
        width: size.width,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30.00),
                bottomRight: Radius.circular(30.00)),
            gradient: ColorConstant.gradientColor),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              widget.title,
              style: AppStyle.txtLatoBold12.copyWith(fontSize: 15),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                    width: LayoutHelper.getWidth(context, fraction: .75),
                    height: 40,
                    decoration: AppDecoration.txtOutlineGray50026.copyWith(
                        borderRadius: BorderRadiusStyle.txtRoundedBorder10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Search fabric name",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular14Gray400),
                    )),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () async {
                    await getIt<AppRouter>().push(const FilterScreenRoute());
                  },
                  child: Container(
                    height: 38,
                    width: 45,
                    color: ColorConstant.pink700Primary,
                    child: const Icon(
                      Icons.filter_list,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      leading: widget.backbutton
          ? InkWell(
              onTap: widget.onPressed,
              child: Padding(
                padding: const EdgeInsets.only(top: 7.0, left: 10),
                child: SvgPicture.asset(
                  fit: BoxFit.scaleDown,
                  ImageConstant.imgArrowleft,
                  height: 30,
                  width: 30,
                ),
              ),
            )
          : InkWell(
              onTap: widget.onPressed,
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 5, bottom: 25),
                child: SvgPicture.asset(
                  fit: BoxFit.scaleDown,
                  ImageConstant.imgMenu,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
    );
  }
}
