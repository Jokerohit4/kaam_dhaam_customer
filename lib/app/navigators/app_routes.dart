part of 'app_pages.dart';

/// A chunks of routes and the path names which will be used to create
/// routes in [AppPages].
abstract class Routes {
  static const splashScreen = _Paths.splashScreen;
  static const welcomeScreen = _Paths.welcomeScreen;
  static const loginScreen = _Paths.loginScreen;
  static const signUpScreen = _Paths.signUpScreen;
  static const workerScreen = _Paths.workerScreen;
  static const shortScreen = _Paths.shortScreen;
  static const profileScreen = _Paths.profileScreen;
  static const userProfile = _Paths.userProfile;
}

abstract class _Paths {
  static const splashScreen = '/splash-screen';
  static const welcomeScreen = '/Pages.welcome-screen';
  static const loginScreen = '/Pages.login-screen';
  static const signUpScreen = '/signUp-screen';
  static const workerScreen = '/worker-screen';
  static const shortScreen = '/short-screen';
  static const profileScreen = '/profile-screen';
  static const userProfile = '/user-profile';
}
