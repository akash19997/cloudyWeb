import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gerywhite/demo_screen.dart';
import 'package:gerywhite/feature/about_us/presentation/about_us.dart';
import 'package:gerywhite/feature/contact_us/presentation/contact_us.dart';
import 'package:gerywhite/feature/help_center/presentation/help_center.dart';
import 'package:gerywhite/feature/otp/presentation/otp_page.dart';
import 'package:gerywhite/feature/privacy_policy/presentation/privacy_policy.dart';
import 'package:gerywhite/feature/select_type/presentaion/select_type_widget.dart';
import 'package:gerywhite/feature/signup/presentation/signup_screen.dart';
import 'package:gerywhite/feature/terms_conditions/presentation/terms_conditions.dart';

import '../../feature/category/presentation/category.dart';
import '../../feature/filter/presentation/filter.dart';
import '../../feature/home_screen/presentation/home_screen.dart';
import '../../feature/my_account/presentation/my_account.dart';
import '../../feature/my_enquiry/presentation/my_enquiry.dart';
import '../../feature/my_order/presentation/my_order.dart';
import '../../feature/my_profile/presentation/my_profile_page.dart';
import '../../feature/notification/presentation/notification_page.dart';
import '../../feature/order_issue/presentation/order_issue.dart';
import '../../feature/polyester/presentation/polyester.dart';
import '../../feature/post_fabric_requirement/presentation/postfabric_requirement.dart';
import '../../feature/product_details/presentation/product_details.dart';
import '../../feature/products/presentation/product_list_tab.dart';
import '../../feature/tabbar/presentation/home_tabbar.dart';
import '../../feature/track_enquiry/presentation/track_enquiry.dart';
import '../../feature/track_order/presentation/track_order.dart';
import '../../feature/welcome/presentation/welcome_page.dart';

part 'route.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: DemoScreen, initial: true, name: 'DemoScreenRoute'),
    AutoRoute(page: WelcomePage, name: 'WelcomePageRoute'),
    //ProductDetailsScreen
    AutoRoute(page: ProductDetailsScreen, name: 'ProductDetailsScreenRoute'),
    AutoRoute(page: ProductListTab, name: 'ProductListTabRoute'),
    AutoRoute(page: HelpCenterScreen, name: 'HelpCenterScreenRoute'),
    AutoRoute(page: OtpScreen, name: 'OtpScreenRoute'),
    AutoRoute(page: SelectTypeScreen, name: 'SelectTypeScreenRoute'),
    AutoRoute(page: AboutUs, name: 'AboutUsRoute'),
    AutoRoute(page: SignUpScreen, name: 'SignUpScreenRoute'),
    AutoRoute(page: ContactUsScreen, name: 'ContactUsScreenRoute'),
    AutoRoute(page: PrivacyPolicyScreen, name: 'PrivacyPolicyScreenRoute'),
    AutoRoute(
        page: TermsAndConditionScreen, name: 'TermsAndConditionScreenRoute'),
    AutoRoute(page: HomeContainerScreen, name: 'HomeContainerScreenRoute'),
    AutoRoute(page: HomePage, name: 'HomePageRoute'),
    AutoRoute(
        page: PostFabricRequirementScreen,
        name: 'PostFabricRequirementScreenRoute'),
    AutoRoute(page: Polyester, name: 'PolyesterRoute'),
    AutoRoute(page: FilterScreen, name: 'FilterScreenRoute'),
    AutoRoute(page: NotificationScreen, name: 'NotificationScreenRoute'),
    AutoRoute(page: MyAccountPage, name: 'MyAccountPageRoute'),
    AutoRoute(page: MyProfileScreen, name: 'MyProfileScreenRoute'),
    AutoRoute(page: MyEnquiry, name: 'MyEnquiryRoute'),
    AutoRoute(page: TrackEnquiryScreen, name: 'TrackEnquiryScreenRoute'),
    AutoRoute(page: MyOrder, name: 'MyOrderRoute'),
    AutoRoute(page: TrackOrdersScreen, name: 'TrackOrdersScreenRoute'),
    AutoRoute(page: OrderIssueScreen, name: 'OrderIssueScreenScreenRoute'),
    AutoRoute(page: Category, name: 'CategoryRoute'),
// Category
    // PostFabricRequirementScreen Polyester NotificationScreen MyAccountPage MyProfileScreen MyEnquiry TrackEnquiryScreen

    // HomePage MyOrder  TrackOrdersScreen OrderIssueScreen

    // HomeContainerScreen
    // WelcomePage
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
