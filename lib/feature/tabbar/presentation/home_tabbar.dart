// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:gerywhite/feature/help_center/presentation/help_center.dart';
import 'package:gerywhite/feature/home_screen/presentation/home_screen.dart';
import '../../../core/constants/color/color_constant.dart';
import '../../../injection_container.dart';
import '../../../core/navigation/route.dart';
import '../../../widgets/custom_bottom_bar.dart';
import '../../my_account/presentation/my_account.dart';
import '../../products/presentation/product_list_tab.dart';

// ignore: must_be_immutable
class HomeContainerScreen extends StatelessWidget {
  HomeContainerScreen(

      // required this.routeName,
      );
  // final String? routeName;
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  final router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Navigator(
              key: navigatorKey,
              initialRoute: HomePageRoute.name,
              onGenerateRoute: (routeSetting) => PageRouteBuilder(
                  pageBuilder: (ctx, ani, ani1) =>
                      getCurrentPage(routeSetting.name!),
                  transitionDuration: const Duration(seconds: 0)),
            ),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  String initialRoute(BottomNavigation name) {
    switch (name) {
      case BottomNavigation.Home:
        return HomePageRoute.name;
      case BottomNavigation.Products:
        return MyAccountPageRoute.name;
      default:
        return AboutUsRoute.name;
    }
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return HomePageRoute.name;
      case BottomBarEnum.Products:
        return ProductListTabRoute.name;
      case BottomBarEnum.Postfabric:
        return "/";
      case BottomBarEnum.Myaccount:
        return MyAccountPageRoute.name;
      default:
        return HomePageRoute.name;
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case "HomePageRoute":
        return const HomePage();
      case "MyAccountPageRoute":
        return const MyAccountPage();
      case "ProductListTabRoute":
        return const ProductListTab();

      default:
        return const DefaultWidget();
    }
  }
}

enum BottomNavigation {
  Home,
  Products,
  Postfabric,
  Myaccount,
}
