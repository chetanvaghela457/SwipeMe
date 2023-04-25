import 'package:get/get.dart';
import 'package:swipeme/screens/choice_screen/choice_screen_view.dart';
import 'package:swipeme/screens/create_profile_screen/crete_profile_view.dart';
import 'package:swipeme/screens/preview_profile_screen/profile_preview_screen_view.dart';
import 'package:swipeme/screens/published_profile_screen/published_profile_screen_view.dart';
import 'package:swipeme/screens/register_screen/register_screen_view.dart';
import 'package:swipeme/screens/signin_screen/signin_screen_view.dart';
import 'package:swipeme/screens/splash_screen/splash_screen_view.dart';
import '../allbindings.dart';
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

  // static String homeScreen = '/home_Screen';
  // static String dashboardScreen = '/dashboard_Screen';
  // static String addPathologyScreen = '/add_pathology_Screen';
  // static String addShortListScreen = '/add_shortlist_Screen';

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
    )
  ];
}
