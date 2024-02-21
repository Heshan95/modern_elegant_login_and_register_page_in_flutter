import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/features/authentication/screens/onboarding/onboading.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoadingScreen(),
    );
  }
}
