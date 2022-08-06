import 'package:get/get.dart';

import 'app_pages.dart';

/// A chunk of routes taken in the application.
abstract class RouteManagement {
  /// Go to the splash screen.

  static void goToWelcome() {
    Get.toNamed<void>(
      Routes.welcomeScreen,
    );
  }

  static void goToLogin() {
    Get.toNamed<void>(
      Routes.loginScreen,
    );
  }

  static void goToSignUP() {
    Get.toNamed<void>(
      Routes.signUpScreen,
    );
  }

  /// Go to app.app.app.app.navigators.navigators.pages.workers type screen
  static void goToWorkers() {
    Get.toNamed<void>(
      Routes.workerScreen,
    );
  }

  static void goToShort() {
    Get.toNamed<void>(
      Routes.shortScreen,
    );
  }

  static void goToProfile() {
    Get.toNamed<void>(Routes.profileScreen);
  }

  static void goToUserProfile() {
    Get.toNamed<void>(Routes.userProfile);
  }
}
