import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/routes/app_router.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyC0EIuUWHt47RUycsgKthQICUqw-i9dUkU",
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
  runApp(const  PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1440, 1024),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
          theme: ThemeData.dark(),
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
