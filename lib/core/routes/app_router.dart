import 'package:go_router/go_router.dart';
import 'package:portfolio/presentation/pages/main_screen.dart';

class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(path: "/", builder: (_, __)=> const MainScreen()),
    // GoRoute(path: "/about", builder: (_, __)=> const AboutScreen()),
  ]);
}
