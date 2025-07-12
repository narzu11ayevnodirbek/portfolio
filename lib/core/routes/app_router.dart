import 'package:go_router/go_router.dart';
import 'package:portfolio/presentation/pages/home/home_screen.dart';

class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(path: "/", builder: (_, __)=> const HomeScreen()),
    // GoRoute(path: "/about", builder: (_, __)=> const AboutScreen()),
  ]);
}
