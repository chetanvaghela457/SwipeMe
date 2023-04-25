import 'package:get/get.dart';
import 'package:swipeme/screens/choice_screen/choice_screen_logic.dart';
import 'package:swipeme/screens/create_profile_screen/create_profile_logic.dart';
import 'package:swipeme/screens/preview_profile_screen/preview_profile_logic.dart';
import 'package:swipeme/screens/published_profile_screen/published_profile_screen_logic.dart';
import 'package:swipeme/screens/signin_screen/signin_screen_logic.dart';
import 'package:swipeme/screens/splash_screen/splash_screen_logic.dart';
import 'package:swipeme/screens/welcome_screen/welcome_screen_logic.dart';

import 'screens/register_screen/register_screen_logic.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenLogic());
  }
}

class WelcomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WelcomeScreenLogic());
  }
}

class ChoiceScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChoiceScreenLogic());
  }
}

class CreateProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateProfileLogic());
  }
}

class SignInScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInScreenLogic());
  }
}
class RegisterScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterScreenLogic());
  }
}
class PreviewProfileScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PreviewProfileScreenLogic());
  }
}

class PublishedProfileScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PublishedProfileScreenLogic());
  }
}

