// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'route.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    DemoScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DemoScreen(),
      );
    },
    WelcomePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const WelcomePage(),
      );
    },
    ProductDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailsScreenRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ProductDetailsScreen(
          key: args.key,
          productid: args.productid,
        ),
      );
    },
    ProductListTabRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ProductListTab(),
      );
    },
    HelpCenterScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HelpCenterScreen(),
      );
    },
    OtpScreenRoute.name: (routeData) {
      final args = routeData.argsAs<OtpScreenRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: OtpScreen(
          key: args.key,
          phoneNumber: args.phoneNumber,
          otp: args.otp,
        ),
      );
    },
    SelectTypeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SelectTypeScreenRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SelectTypeScreen(
          key: args.key,
          mobNo: args.mobNo,
        ),
      );
    },
    AboutUsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const AboutUs(),
      );
    },
    SignUpScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpScreenRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SignUpScreen(
          key: args.key,
          mobNo: args.mobNo,
        ),
      );
    },
    ContactUsScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ContactUsScreen(),
      );
    },
    PrivacyPolicyScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const PrivacyPolicyScreen(),
      );
    },
    TermsAndConditionScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const TermsAndConditionScreen(),
      );
    },
    HomeContainerScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: HomeContainerScreen(),
      );
    },
    HomePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    PostFabricRequirementScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PostFabricRequirementScreenRouteArgs>(
          orElse: () => const PostFabricRequirementScreenRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: PostFabricRequirementScreen(key: args.key),
      );
    },
    PolyesterRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const Polyester(),
      );
    },
    FilterScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const FilterScreen(),
      );
    },
    NotificationScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const NotificationScreen(),
      );
    },
    MyAccountPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MyAccountPage(),
      );
    },
    MyProfileScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: MyProfileScreen(),
      );
    },
    MyEnquiryRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MyEnquiry(),
      );
    },
    TrackEnquiryScreenRoute.name: (routeData) {
      final args = routeData.argsAs<TrackEnquiryScreenRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: TrackEnquiryScreen(
          key: args.key,
          enquiryId: args.enquiryId,
        ),
      );
    },
    MyOrderRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MyOrder(),
      );
    },
    TrackOrdersScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: TrackOrdersScreen(),
      );
    },
    OrderIssueScreenScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const OrderIssueScreen(),
      );
    },
    CategoryRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const Category(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          DemoScreenRoute.name,
          path: '/',
        ),
        RouteConfig(
          WelcomePageRoute.name,
          path: '/welcome-page',
        ),
        RouteConfig(
          ProductDetailsScreenRoute.name,
          path: '/product-details-screen',
        ),
        RouteConfig(
          ProductListTabRoute.name,
          path: '/product-list-tab',
        ),
        RouteConfig(
          HelpCenterScreenRoute.name,
          path: '/help-center-screen',
        ),
        RouteConfig(
          OtpScreenRoute.name,
          path: '/otp-screen',
        ),
        RouteConfig(
          SelectTypeScreenRoute.name,
          path: '/select-type-screen',
        ),
        RouteConfig(
          AboutUsRoute.name,
          path: '/about-us',
        ),
        RouteConfig(
          SignUpScreenRoute.name,
          path: '/sign-up-screen',
        ),
        RouteConfig(
          ContactUsScreenRoute.name,
          path: '/contact-us-screen',
        ),
        RouteConfig(
          PrivacyPolicyScreenRoute.name,
          path: '/privacy-policy-screen',
        ),
        RouteConfig(
          TermsAndConditionScreenRoute.name,
          path: '/terms-and-condition-screen',
        ),
        RouteConfig(
          HomeContainerScreenRoute.name,
          path: '/home-container-screen',
        ),
        RouteConfig(
          HomePageRoute.name,
          path: '/home-page',
        ),
        RouteConfig(
          PostFabricRequirementScreenRoute.name,
          path: '/post-fabric-requirement-screen',
        ),
        RouteConfig(
          PolyesterRoute.name,
          path: '/Polyester',
        ),
        RouteConfig(
          FilterScreenRoute.name,
          path: '/filter-screen',
        ),
        RouteConfig(
          NotificationScreenRoute.name,
          path: '/notification-screen',
        ),
        RouteConfig(
          MyAccountPageRoute.name,
          path: '/my-account-page',
        ),
        RouteConfig(
          MyProfileScreenRoute.name,
          path: '/my-profile-screen',
        ),
        RouteConfig(
          MyEnquiryRoute.name,
          path: '/my-enquiry',
        ),
        RouteConfig(
          TrackEnquiryScreenRoute.name,
          path: '/track-enquiry-screen',
        ),
        RouteConfig(
          MyOrderRoute.name,
          path: '/my-order',
        ),
        RouteConfig(
          TrackOrdersScreenRoute.name,
          path: '/track-orders-screen',
        ),
        RouteConfig(
          OrderIssueScreenScreenRoute.name,
          path: '/order-issue-screen',
        ),
        RouteConfig(
          CategoryRoute.name,
          path: '/Category',
        ),
      ];
}

/// generated route for
/// [DemoScreen]
class DemoScreenRoute extends PageRouteInfo<void> {
  const DemoScreenRoute()
      : super(
          DemoScreenRoute.name,
          path: '/',
        );

  static const String name = 'DemoScreenRoute';
}

/// generated route for
/// [WelcomePage]
class WelcomePageRoute extends PageRouteInfo<void> {
  const WelcomePageRoute()
      : super(
          WelcomePageRoute.name,
          path: '/welcome-page',
        );

  static const String name = 'WelcomePageRoute';
}

/// generated route for
/// [ProductDetailsScreen]
class ProductDetailsScreenRoute
    extends PageRouteInfo<ProductDetailsScreenRouteArgs> {
  ProductDetailsScreenRoute({
    Key? key,
    required String productid,
  }) : super(
          ProductDetailsScreenRoute.name,
          path: '/product-details-screen',
          args: ProductDetailsScreenRouteArgs(
            key: key,
            productid: productid,
          ),
        );

  static const String name = 'ProductDetailsScreenRoute';
}

class ProductDetailsScreenRouteArgs {
  const ProductDetailsScreenRouteArgs({
    this.key,
    required this.productid,
  });

  final Key? key;

  final String productid;

  @override
  String toString() {
    return 'ProductDetailsScreenRouteArgs{key: $key, productid: $productid}';
  }
}

/// generated route for
/// [ProductListTab]
class ProductListTabRoute extends PageRouteInfo<void> {
  const ProductListTabRoute()
      : super(
          ProductListTabRoute.name,
          path: '/product-list-tab',
        );

  static const String name = 'ProductListTabRoute';
}

/// generated route for
/// [HelpCenterScreen]
class HelpCenterScreenRoute extends PageRouteInfo<void> {
  const HelpCenterScreenRoute()
      : super(
          HelpCenterScreenRoute.name,
          path: '/help-center-screen',
        );

  static const String name = 'HelpCenterScreenRoute';
}

/// generated route for
/// [OtpScreen]
class OtpScreenRoute extends PageRouteInfo<OtpScreenRouteArgs> {
  OtpScreenRoute({
    Key? key,
    required String phoneNumber,
    required String otp,
  }) : super(
          OtpScreenRoute.name,
          path: '/otp-screen',
          args: OtpScreenRouteArgs(
            key: key,
            phoneNumber: phoneNumber,
            otp: otp,
          ),
        );

  static const String name = 'OtpScreenRoute';
}

class OtpScreenRouteArgs {
  const OtpScreenRouteArgs({
    this.key,
    required this.phoneNumber,
    required this.otp,
  });

  final Key? key;

  final String phoneNumber;

  final String otp;

  @override
  String toString() {
    return 'OtpScreenRouteArgs{key: $key, phoneNumber: $phoneNumber, otp: $otp}';
  }
}

/// generated route for
/// [SelectTypeScreen]
class SelectTypeScreenRoute extends PageRouteInfo<SelectTypeScreenRouteArgs> {
  SelectTypeScreenRoute({
    Key? key,
    required String mobNo,
  }) : super(
          SelectTypeScreenRoute.name,
          path: '/select-type-screen',
          args: SelectTypeScreenRouteArgs(
            key: key,
            mobNo: mobNo,
          ),
        );

  static const String name = 'SelectTypeScreenRoute';
}

class SelectTypeScreenRouteArgs {
  const SelectTypeScreenRouteArgs({
    this.key,
    required this.mobNo,
  });

  final Key? key;

  final String mobNo;

  @override
  String toString() {
    return 'SelectTypeScreenRouteArgs{key: $key, mobNo: $mobNo}';
  }
}

/// generated route for
/// [AboutUs]
class AboutUsRoute extends PageRouteInfo<void> {
  const AboutUsRoute()
      : super(
          AboutUsRoute.name,
          path: '/about-us',
        );

  static const String name = 'AboutUsRoute';
}

/// generated route for
/// [SignUpScreen]
class SignUpScreenRoute extends PageRouteInfo<SignUpScreenRouteArgs> {
  SignUpScreenRoute({
    Key? key,
    required String mobNo,
  }) : super(
          SignUpScreenRoute.name,
          path: '/sign-up-screen',
          args: SignUpScreenRouteArgs(
            key: key,
            mobNo: mobNo,
          ),
        );

  static const String name = 'SignUpScreenRoute';
}

class SignUpScreenRouteArgs {
  const SignUpScreenRouteArgs({
    this.key,
    required this.mobNo,
  });

  final Key? key;

  final String mobNo;

  @override
  String toString() {
    return 'SignUpScreenRouteArgs{key: $key, mobNo: $mobNo}';
  }
}

/// generated route for
/// [ContactUsScreen]
class ContactUsScreenRoute extends PageRouteInfo<void> {
  const ContactUsScreenRoute()
      : super(
          ContactUsScreenRoute.name,
          path: '/contact-us-screen',
        );

  static const String name = 'ContactUsScreenRoute';
}

/// generated route for
/// [PrivacyPolicyScreen]
class PrivacyPolicyScreenRoute extends PageRouteInfo<void> {
  const PrivacyPolicyScreenRoute()
      : super(
          PrivacyPolicyScreenRoute.name,
          path: '/privacy-policy-screen',
        );

  static const String name = 'PrivacyPolicyScreenRoute';
}

/// generated route for
/// [TermsAndConditionScreen]
class TermsAndConditionScreenRoute extends PageRouteInfo<void> {
  const TermsAndConditionScreenRoute()
      : super(
          TermsAndConditionScreenRoute.name,
          path: '/terms-and-condition-screen',
        );

  static const String name = 'TermsAndConditionScreenRoute';
}

/// generated route for
/// [HomeContainerScreen]
class HomeContainerScreenRoute extends PageRouteInfo<void> {
  const HomeContainerScreenRoute()
      : super(
          HomeContainerScreenRoute.name,
          path: '/home-container-screen',
        );

  static const String name = 'HomeContainerScreenRoute';
}

/// generated route for
/// [HomePage]
class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [PostFabricRequirementScreen]
class PostFabricRequirementScreenRoute
    extends PageRouteInfo<PostFabricRequirementScreenRouteArgs> {
  PostFabricRequirementScreenRoute({Key? key})
      : super(
          PostFabricRequirementScreenRoute.name,
          path: '/post-fabric-requirement-screen',
          args: PostFabricRequirementScreenRouteArgs(key: key),
        );

  static const String name = 'PostFabricRequirementScreenRoute';
}

class PostFabricRequirementScreenRouteArgs {
  const PostFabricRequirementScreenRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'PostFabricRequirementScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [Polyester]
class PolyesterRoute extends PageRouteInfo<void> {
  const PolyesterRoute()
      : super(
          PolyesterRoute.name,
          path: '/Polyester',
        );

  static const String name = 'PolyesterRoute';
}

/// generated route for
/// [FilterScreen]
class FilterScreenRoute extends PageRouteInfo<void> {
  const FilterScreenRoute()
      : super(
          FilterScreenRoute.name,
          path: '/filter-screen',
        );

  static const String name = 'FilterScreenRoute';
}

/// generated route for
/// [NotificationScreen]
class NotificationScreenRoute extends PageRouteInfo<void> {
  const NotificationScreenRoute()
      : super(
          NotificationScreenRoute.name,
          path: '/notification-screen',
        );

  static const String name = 'NotificationScreenRoute';
}

/// generated route for
/// [MyAccountPage]
class MyAccountPageRoute extends PageRouteInfo<void> {
  const MyAccountPageRoute()
      : super(
          MyAccountPageRoute.name,
          path: '/my-account-page',
        );

  static const String name = 'MyAccountPageRoute';
}

/// generated route for
/// [MyProfileScreen]
class MyProfileScreenRoute extends PageRouteInfo<void> {
  const MyProfileScreenRoute()
      : super(
          MyProfileScreenRoute.name,
          path: '/my-profile-screen',
        );

  static const String name = 'MyProfileScreenRoute';
}

/// generated route for
/// [MyEnquiry]
class MyEnquiryRoute extends PageRouteInfo<void> {
  const MyEnquiryRoute()
      : super(
          MyEnquiryRoute.name,
          path: '/my-enquiry',
        );

  static const String name = 'MyEnquiryRoute';
}

/// generated route for
/// [TrackEnquiryScreen]
class TrackEnquiryScreenRoute
    extends PageRouteInfo<TrackEnquiryScreenRouteArgs> {
  TrackEnquiryScreenRoute({
    Key? key,
    required String enquiryId,
  }) : super(
          TrackEnquiryScreenRoute.name,
          path: '/track-enquiry-screen',
          args: TrackEnquiryScreenRouteArgs(
            key: key,
            enquiryId: enquiryId,
          ),
        );

  static const String name = 'TrackEnquiryScreenRoute';
}

class TrackEnquiryScreenRouteArgs {
  const TrackEnquiryScreenRouteArgs({
    this.key,
    required this.enquiryId,
  });

  final Key? key;

  final String enquiryId;

  @override
  String toString() {
    return 'TrackEnquiryScreenRouteArgs{key: $key, enquiryId: $enquiryId}';
  }
}

/// generated route for
/// [MyOrder]
class MyOrderRoute extends PageRouteInfo<void> {
  const MyOrderRoute()
      : super(
          MyOrderRoute.name,
          path: '/my-order',
        );

  static const String name = 'MyOrderRoute';
}

/// generated route for
/// [TrackOrdersScreen]
class TrackOrdersScreenRoute extends PageRouteInfo<void> {
  const TrackOrdersScreenRoute()
      : super(
          TrackOrdersScreenRoute.name,
          path: '/track-orders-screen',
        );

  static const String name = 'TrackOrdersScreenRoute';
}

/// generated route for
/// [OrderIssueScreen]
class OrderIssueScreenScreenRoute extends PageRouteInfo<void> {
  const OrderIssueScreenScreenRoute()
      : super(
          OrderIssueScreenScreenRoute.name,
          path: '/order-issue-screen',
        );

  static const String name = 'OrderIssueScreenScreenRoute';
}

/// generated route for
/// [Category]
class CategoryRoute extends PageRouteInfo<void> {
  const CategoryRoute()
      : super(
          CategoryRoute.name,
          path: '/Category',
        );

  static const String name = 'CategoryRoute';
}
