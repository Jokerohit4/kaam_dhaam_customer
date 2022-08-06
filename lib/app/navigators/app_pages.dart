import 'package:get/get.dart';

import '../app.dart';
import '../pages/page.dart';

part 'app_routes.dart';

/// Contains the list of app.app.app.app.navigators.navigators.pages or routes taken across the whole application.
/// This will prevent us in using context for navigation. And also providing
/// the blocs required in the next named routes.
///
/// [app.app.app.app.navigators.navigators.pages] : will contain all the app.app.app.app.navigators.navigators.pages in the application as a route
/// and will be used in the material app.
class AppPages {
  //static const initial = Routes.splashScreen;

  static var transitionDuration = const Duration(
    milliseconds: 550,
  );

  static final pages = [
    GetPage<WelcomeScreenView>(
      name: _Paths.welcomeScreen,
      transitionDuration: transitionDuration,
      page: () => WelcomeScreenView(),
      // binding: WorkersBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<LoginView>(
      name: _Paths.loginScreen,
      transitionDuration: transitionDuration,
      page: () => LoginView(),
      // binding: WorkersBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<RegistrationView>(
      name: _Paths.signUpScreen,
      transitionDuration: transitionDuration,
      page: () => RegistrationView(),
      // binding: WorkersBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<WorkerTypeView>(
      name: _Paths.workerScreen,
      transitionDuration: transitionDuration,
      page: () => WorkerTypeView(),
      binding: WorkersBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<ShortListedView>(
      name: _Paths.shortScreen,
      transitionDuration: transitionDuration,
      page: () => ShortListedView(),
      // binding: WorkersBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<WorkersProfileView>(
      name: _Paths.profileScreen,
      transitionDuration: transitionDuration,
      page: () => WorkersProfileView(),
      // binding: WorkersBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<UserProfile>(
      name: _Paths.userProfile,
      transitionDuration: transitionDuration,
      page: () => UserProfile(),
      // binding: WorkersBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
