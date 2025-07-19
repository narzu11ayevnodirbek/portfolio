import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/routes/app_router.dart';
import 'package:portfolio/core/secrets/secrets.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  String apiKey = Secrets.firebaseApiKey;

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: apiKey,
        appId: "1:1037197734207:web:d9b0b7ee05facf3152638a",
        messagingSenderId: "1037197734207",
        projectId: "portfolio-ae114",
        storageBucket: "portfolio-ae114.firebasestorage.app",
        measurementId: "G-C0GQXBMRZ4",
        authDomain: "portfolio-ae114.firebaseapp.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {

        late Size designSize;

        final width = constraints.maxWidth;

        if (width < 600) {
          // Mobile
          designSize = const Size(375, 812);
        } else if (width >= 600 && width < 1024) {
          // Tablet
          designSize = const Size(768, 1024);
        } else {
          // Desktop
          designSize = const Size(1440, 1024);
        }
        return ScreenUtilInit(
          designSize: designSize,
          minTextAdapt: true,
          builder: (context, child) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: AppRouter.router,
              theme: ThemeData.dark().copyWith(
                scaffoldBackgroundColor: Color(0xFF121212),
                colorScheme: ThemeData.dark().colorScheme.copyWith(
                  primaryContainer: Color(0xFF1e1e1f),
                  secondaryContainer: Color(0xFF222224),
                  surfaceContainer: Color(0xFF383838)
                )
              ),
            );
          },
          child: const SizedBox.shrink(),
        );
      }
    );
  }
}
