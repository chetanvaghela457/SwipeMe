import 'package:get/get.dart';
import 'package:swipeme/screens/choice_screen/choice_screen_view.dart';
import 'package:swipeme/screens/create_profile_screen/crete_profile_view.dart';
import 'package:swipeme/screens/home_profile_screen/home_profile_screen_view.dart';
import 'package:swipeme/screens/match_found_screen/match_found_screen_view.dart';
import 'package:swipeme/screens/navigation_dashboard/dashboard_view.dart';
import 'package:swipeme/screens/preview_profile_screen/profile_preview_screen_view.dart';
import 'package:swipeme/screens/published_profile_screen/published_profile_screen_view.dart';
import 'package:swipeme/screens/register_screen/register_screen_view.dart';
import 'package:swipeme/screens/signin_screen/signin_screen_view.dart';
import 'package:swipeme/screens/splash_screen/splash_screen_view.dart';
import 'package:swipeme/screens/swiper_screen/swiper_screen_view.dart';
import '../allbindings.dart';
import '../screens/home_screen/home_screen_view.dart';
import '../screens/welcome_screen/welcome_screen_view.dart';

class AppRoutes {
  static String splashScreen = '/splash_Screen';
  static String welcomeScreen = '/welcome_Screen';
  static String choiceScreen = '/choice_Screen';
  static String signInScreen = '/signIn_Screen';
  static String registerScreen = '/register_Screen';
  static String createProfileScreen = '/create_profile_Screen';
  static String previewProfileScreen = '/preview_profile_Screen';
  static String publishedProfileScreen = '/published_profile_Screen';
  static String homeScreen = '/home_Screen';
  static String dashboardScreen = '/dashboard_Screen';
  static String homeProfileScreen = '/home_profile_Screen';
  static String swiperScreen = '/swiper_Screen';
  static String matchFoundScreen = '/match_found_Screen';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => const SplashScreenView(),
      bindings: [SplashScreenBinding()],
    ),
    GetPage(
      name: welcomeScreen,
      page: () => const WelcomeScreenView(),
      bindings: [WelcomeScreenBinding()],
    ),
    GetPage(
      name: choiceScreen,
      page: () => const ChoiceScreenView(),
      bindings: [ChoiceScreenBinding()],
    ),
    GetPage(
      name: signInScreen,
      page: () => const SignInScreenView(),
      bindings: [SignInScreenBinding()],
    ),
    GetPage(
      name: registerScreen,
      page: () => const RegisterScreenView(),
      bindings: [RegisterScreenBinding()],
    ),
    GetPage(
      name: createProfileScreen,
      page: () => const CreateProfileView(),
      bindings: [CreateProfileBinding()],
    ),
    GetPage(
      name: previewProfileScreen,
      page: () => const PreviewProfileScreenView(),
      bindings: [PreviewProfileScreenBinding()],
    ),
    GetPage(
      name: publishedProfileScreen,
      page: () => const PublishedProfileScreenView(),
      bindings: [PublishedProfileScreenBinding()],
    ),
    GetPage(
      name: homeScreen,
      page: () => const HomeScreenView(),
      // bindings: [HomeScreenBinding()],
    ),
    GetPage(
      name: homeProfileScreen,
      page: () => const HomeProfileScreenView(),
      // bindings: [HomeScreenBinding()],
    ),
    GetPage(
      name: swiperScreen,
      page: () => SwiperScreenView(),
      bindings: [SwiperScreenBinding()],
    ),
    GetPage(
      name: matchFoundScreen,
      page: () => MatchFoundScreenView(),
      bindings: [MatchFoundScreenBinding()],
    ),
    GetPage(
      name: dashboardScreen,
      page: () => DashboardWidget(),
      bindings: [
        DashboardBinding(),
        HomeScreenBinding(),
        HomeProfileScreenBinding(),
        SwiperScreenBinding(),
        MatchFoundScreenBinding()
      ],
    ),
  ];
}
