import 'package:flutter/material.dart';

import 'routes/route_names.dart';
import 'theme/app_theme.dart';
import '../features/auth_onboarding/presentation/screens/landing_screen.dart';
import '../features/auth_onboarding/presentation/screens/onboarding_form_screen.dart';

class JuaApp extends StatelessWidget {
  const JuaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jua',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      initialRoute: RouteNames.landing,
      routes: {
        RouteNames.landing: (_) => const LandingScreen(),
        RouteNames.onboardingForm: (_) => const OnboardingFormScreen(),
      },
    );
  }
}
