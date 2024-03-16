import 'package:blog_app/blog/presentation/pages/auth/auth_page.dart';
import 'package:blog_app/blog/presentation/pages/auth/login_page.dart';
import 'package:blog_app/blog/presentation/pages/auth/register_page.dart';
import 'package:blog_app/core/constants/blog_routes.dart';
import 'package:blog_app/core/constants/blog_string.dart';
import 'package:blog_app/core/constants/blog_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    // DeviceOrientation.portraitDown
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return MaterialApp(
          title: BlogString.appName,
          debugShowCheckedModeBanner: false,
          theme: BlogTheme.lightTheme,
          initialRoute: BlogRoutes.registerRoute,
          routes: {
            BlogRoutes.authRoute: (context) => const AuthPage(),
            BlogRoutes.loginRoute: (context) => const LoginPage(),
            BlogRoutes.registerRoute: (context) => const RegisterPage(),
          },
        );
      },
    );
  }
}
