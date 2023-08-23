import 'package:get/get.dart';
import 'package:my_flutter_boilerplate/utils/routes/routes_name.dart';
import 'package:my_flutter_boilerplate/views/auth_view/auth_main_screen.dart';
import 'package:my_flutter_boilerplate/views/auth_view/login_screen.dart';
import 'package:my_flutter_boilerplate/views/auth_view/register_screen.dart';
import 'package:my_flutter_boilerplate/views/initials_view/welcome_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.loginScreen,
          page: () => const LoginScreen(),
        ),
        GetPage(
          name: RoutesName.authMainScreen,
          page: () => const AuthMainScreen(),
        ),
        GetPage(
          name: RoutesName.registerScreen,
          page: () => const RegisterationScreen(),
        ),
        GetPage(
          name: RoutesName.welcomeScreen,
          page: () => const WelcomeScreen(),
        ),
      ];
}
