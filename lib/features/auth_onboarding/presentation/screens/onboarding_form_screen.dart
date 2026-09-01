import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';

class OnboardingFormScreen extends StatelessWidget {
  const OnboardingFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Onboarding Form (Screen 2) coming soon',
          style: TextStyle(color: AppColors.textSecondary),
        ),
      ),
    );
  }
}
