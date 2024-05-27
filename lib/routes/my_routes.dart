

import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';




import '../screen/emergency_kit/responsive/emergency_kit_desktop_screen.dart';
import '../screen/login/login_view_screen.dart';
import '../utils/app_config.dart';
import '../utils/navigaror_key_constants.dart';
import '../utils/routes_name.dart';


final router = GoRouter(
  navigatorKey: navigatorKey,
  redirect: (context, state) async {
    if (await (IsTokenStored()) == false) {
      return "/login";
    } else {
      if (state.fullPath == "/login") {
        return "/studentlist";
      } else {
        print("state${state.fullPath}");
        print("state${state.uri}");
        return null;
      }
    }
  },
  initialLocation: "/login",
  routes: [
    GoRoute(
      name: RoutesName.login,
      path: '/login',
      builder: (context, state) => LoginView(),
    ),
    GoRoute(
      name: RoutesName.emergencykit,
      path: '/',
      builder: (context, state) => EmergencyKitDesktopScreen(),
    ),

  ],
);

Future<bool> IsTokenStored() async {
  final SharedPreferences preferences = await SharedPreferences.getInstance();
  String? accessToken = preferences.getString(AppConfig.accessToken);
  if (accessToken != null) {
    return true;
  } else {
    return false;
  }
}
