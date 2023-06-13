import 'package:walkwithme/presentation/splash_screen/splash_screen.dart';
import 'package:walkwithme/presentation/splash_screen/binding/splash_binding.dart';
import 'package:walkwithme/presentation/login_screen/login_screen.dart';
import 'package:walkwithme/presentation/login_screen/binding/login_binding.dart';
import 'package:walkwithme/presentation/register_screen/register_screen.dart';
import 'package:walkwithme/presentation/register_screen/binding/register_binding.dart';
import 'package:walkwithme/presentation/profile_screen/profile_screen.dart';
import 'package:walkwithme/presentation/profile_screen/binding/profile_binding.dart';
import 'package:walkwithme/presentation/add_dog_screen/add_dog_screen.dart';
import 'package:walkwithme/presentation/add_dog_screen/binding/add_dog_binding.dart';
import 'package:walkwithme/presentation/dogs_screen/dogs_screen.dart';
import 'package:walkwithme/presentation/dogs_screen/binding/dogs_binding.dart';
import 'package:walkwithme/presentation/add_schedule_for_walkers_screen/add_schedule_for_walkers_screen.dart';
import 'package:walkwithme/presentation/add_schedule_for_walkers_screen/binding/add_schedule_for_walkers_binding.dart';
import 'package:walkwithme/presentation/notifications_screen/notifications_screen.dart';
import 'package:walkwithme/presentation/notifications_screen/binding/notifications_binding.dart';
import 'package:walkwithme/presentation/history_screen/history_screen.dart';
import 'package:walkwithme/presentation/history_screen/binding/history_binding.dart';
import 'package:walkwithme/presentation/home_screen/home_screen.dart';
import 'package:walkwithme/presentation/home_screen/binding/home_binding.dart';
import 'package:walkwithme/presentation/update_profile_screen/update_profile_screen.dart';
import 'package:walkwithme/presentation/update_profile_screen/binding/update_profile_binding.dart';
import 'package:walkwithme/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:walkwithme/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String profileScreen = '/profile_screen';

  static const String addDogScreen = '/add_dog_screen';

  static const String dogsScreen = '/dogs_screen';

  static const String addScheduleForWalkersScreen =
      '/add_schedule_for_walkers_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String historyScreen = '/history_screen';

  static const String homeScreen = '/home_screen';

  static const String updateProfileScreen = '/update_profile_screen';

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
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: addDogScreen,
      page: () => AddDogScreen(),
      bindings: [
        AddDogBinding(),
      ],
    ),
    GetPage(
      name: dogsScreen,
      page: () => DogsScreen(),
      bindings: [
        DogsBinding(),
      ],
    ),
    GetPage(
      name: addScheduleForWalkersScreen,
      page: () => AddScheduleForWalkersScreen(),
      bindings: [
        AddScheduleForWalkersBinding(),
      ],
    ),
    GetPage(
      name: notificationsScreen,
      page: () => NotificationsScreen(),
      bindings: [
        NotificationsBinding(),
      ],
    ),
    GetPage(
      name: historyScreen,
      page: () => HistoryScreen(),
      bindings: [
        HistoryBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: updateProfileScreen,
      page: () => UpdateProfileScreen(),
      bindings: [
        UpdateProfileBinding(),
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
