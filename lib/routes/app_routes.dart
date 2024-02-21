import 'package:get/get.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/splash_screen/binding/splash_binding.dart';
import '../presentation/details_screen/details_screen.dart';
import '../presentation/details_screen/binding/details_binding.dart';
import '../presentation/aqi_notification_one_screen/aqi_notification_one_screen.dart';
import '../presentation/aqi_notification_one_screen/binding/aqi_notification_one_binding.dart';
import '../presentation/aqi_notification_screen/aqi_notification_screen.dart';
import '../presentation/aqi_notification_screen/binding/aqi_notification_binding.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/login_screen/binding/login_binding.dart';
import '../presentation/signup_screen/signup_screen.dart';
import '../presentation/signup_screen/binding/signup_binding.dart';
import '../presentation/aqi_scale_screen/aqi_scale_screen.dart';
import '../presentation/aqi_scale_screen/binding/aqi_scale_binding.dart';
import '../presentation/onboarding_one_screen/onboarding_one_screen.dart';
import '../presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import '../presentation/onboarding_two_screen/onboarding_two_screen.dart';
import '../presentation/onboarding_two_screen/binding/onboarding_two_binding.dart';
import '../presentation/onboarding_three_screen/onboarding_three_screen.dart';
import '../presentation/onboarding_three_screen/binding/onboarding_three_binding.dart';
import '../presentation/dashboard_four_container_screen/dashboard_four_container_screen.dart';
import '../presentation/dashboard_four_container_screen/binding/dashboard_four_container_binding.dart';
import '../presentation/dashboard_five_screen/dashboard_five_screen.dart';
import '../presentation/dashboard_five_screen/binding/dashboard_five_binding.dart';
import '../presentation/dashboard_six_screen/dashboard_six_screen.dart';
import '../presentation/dashboard_six_screen/binding/dashboard_six_binding.dart';
import '../presentation/dashboard_seven_screen/dashboard_seven_screen.dart';
import '../presentation/dashboard_seven_screen/binding/dashboard_seven_binding.dart';
import '../presentation/dashboard_eight_screen/dashboard_eight_screen.dart';
import '../presentation/dashboard_eight_screen/binding/dashboard_eight_binding.dart';
import '../presentation/transone_screen/transone_screen.dart';
import '../presentation/transone_screen/binding/transone_binding.dart';
import '../presentation/transtwo_screen/transtwo_screen.dart';
import '../presentation/transtwo_screen/binding/transtwo_binding.dart';
import '../presentation/transthree_screen/transthree_screen.dart';
import '../presentation/transthree_screen/binding/transthree_binding.dart';
import '../presentation/transfour_screen/transfour_screen.dart';
import '../presentation/transfour_screen/binding/transfour_binding.dart';
import '../presentation/transeight_screen/transeight_screen.dart';
import '../presentation/transeight_screen/binding/transeight_binding.dart';
import '../presentation/map_one_screen/map_one_screen.dart';
import '../presentation/map_one_screen/binding/map_one_binding.dart';
import '../presentation/map_two_screen/map_two_screen.dart';
import '../presentation/map_two_screen/binding/map_two_binding.dart';
import '../presentation/map_three_screen/map_three_screen.dart';
import '../presentation/map_three_screen/binding/map_three_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String detailsScreen = '/details_screen';

  static const String aqiNotificationOneScreen = '/aqi_notification_one_screen';

  static const String aqiNotificationScreen = '/aqi_notification_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String aqiScaleScreen = '/aqi_scale_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String dashboardTwoPage = '/dashboard_two_page';

  static const String dashboardFourPage = '/dashboard_four_page';

  static const String dashboardFourContainerScreen =
      '/dashboard_four_container_screen';

  static const String dashboardFiveScreen = '/dashboard_five_screen';

  static const String dashboardSixScreen = '/dashboard_six_screen';

  static const String dashboardSevenScreen = '/dashboard_seven_screen';

  static const String dashboardEightScreen = '/dashboard_eight_screen';

  static const String transoneScreen = '/transone_screen';

  static const String transtwoScreen = '/transtwo_screen';

  static const String transthreeScreen = '/transthree_screen';

  static const String transfourScreen = '/transfour_screen';

  static const String transeightScreen = '/transeight_screen';

  static const String mapOneScreen = '/map_one_screen';

  static const String mapTwoScreen = '/map_two_screen';

  static const String mapThreeScreen = '/map_three_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: detailsScreen,
      page: () => DetailsScreen(),
      bindings: [
        DetailsBinding(),
      ],
    ),
    GetPage(
      name: aqiNotificationOneScreen,
      page: () => AqiNotificationOneScreen(),
      bindings: [
        AqiNotificationOneBinding(),
      ],
    ),
    GetPage(
      name: aqiNotificationScreen,
      page: () => AqiNotificationScreen(),
      bindings: [
        AqiNotificationBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: aqiScaleScreen,
      page: () => AqiScaleScreen(),
      bindings: [
        AqiScaleBinding(),
      ],
    ),
    GetPage(
      name: onboardingOneScreen,
      page: () => OnboardingOneScreen(),
      bindings: [
        OnboardingOneBinding(),
      ],
    ),
    GetPage(
      name: onboardingTwoScreen,
      page: () => OnboardingTwoScreen(),
      bindings: [
        OnboardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onboardingThreeScreen,
      page: () => OnboardingThreeScreen(),
      bindings: [
        OnboardingThreeBinding(),
      ],
    ),
    GetPage(
      name: dashboardFourContainerScreen,
      page: () => DashboardFourContainerScreen(),
      bindings: [
        DashboardFourContainerBinding(),
      ],
    ),
    GetPage(
      name: dashboardFiveScreen,
      page: () => DashboardFiveScreen(),
      bindings: [
        DashboardFiveBinding(),
      ],
    ),
    GetPage(
      name: dashboardSixScreen,
      page: () => DashboardSixScreen(),
      bindings: [
        DashboardSixBinding(),
      ],
    ),
    GetPage(
      name: dashboardSevenScreen,
      page: () => DashboardSevenScreen(),
      bindings: [
        DashboardSevenBinding(),
      ],
    ),
    GetPage(
      name: dashboardEightScreen,
      page: () => DashboardEightScreen(),
      bindings: [
        DashboardEightBinding(),
      ],
    ),
    GetPage(
      name: transoneScreen,
      page: () => TransoneScreen(),
      bindings: [
        TransoneBinding(),
      ],
    ),
    GetPage(
      name: transtwoScreen,
      page: () => TranstwoScreen(),
      bindings: [
        TranstwoBinding(),
      ],
    ),
    GetPage(
      name: transthreeScreen,
      page: () => TransthreeScreen(),
      bindings: [
        TransthreeBinding(),
      ],
    ),
    GetPage(
      name: transfourScreen,
      page: () => TransfourScreen(),
      bindings: [
        TransfourBinding(),
      ],
    ),
    GetPage(
      name: transeightScreen,
      page: () => TranseightScreen(),
      bindings: [
        TranseightBinding(),
      ],
    ),
    GetPage(
      name: mapOneScreen,
      page: () => MapOneScreen(),
      bindings: [
        MapOneBinding(),
      ],
    ),
    GetPage(
      name: mapTwoScreen,
      page: () => MapTwoScreen(),
      bindings: [
        MapTwoBinding(),
      ],
    ),
    GetPage(
      name: mapThreeScreen,
      page: () => MapThreeScreen(),
      bindings: [
        MapThreeBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
