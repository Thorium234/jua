import 'package:flutter/material.dart';

import '../../../../app/routes/route_names.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/social_link_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 56,
        leading: Padding(
          padding: const EdgeInsets.only(left: AppSpacing.sm),
          child: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: AppSpacing.sm),
            child: IconButton(
              icon: const Icon(Icons.notifications_none),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: AppSpacing.md),
            _buildHero(context),
            const SizedBox(height: AppSpacing.xl),
            _buildCtaBlock(context),
            const SizedBox(height: AppSpacing.xl),
            const _TestimonialCard(),
            const SizedBox(height: AppSpacing.xl),
            _buildFooter(context),
            const SizedBox(height: AppSpacing.lg),
          ],
        ),
      ),
    );
  }

  Widget _buildHero(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 96,
          height: 96,
          decoration: BoxDecoration(
            color: AppColors.primaryLight,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.school,
            size: 48,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        Text(
          AppStrings.appName,
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          AppStrings.landingHeadline,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: AppSpacing.md),
        Text(
          AppStrings.landingSubhead,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }

  Widget _buildCtaBlock(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomButton(
          label: AppStrings.landingPrimaryCta,
          onPressed: () => Navigator.of(context).pushNamed(RouteNames.onboardingForm),
        ),
        const SizedBox(height: AppSpacing.sm),
        CustomButton(
          label: AppStrings.landingSecondaryCta,
          onPressed: () => debugPrint('Log In tapped'),
          type: CustomButtonType.outlined,
        ),
      ],
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialLinkButton(
          icon: Icons.chat_bubble_outline,
          label: AppStrings.whatsappUs,
          onPressed: () {},
        ),
        const SizedBox(width: AppSpacing.md),
        SocialLinkButton(
          icon: Icons.email_outlined,
          label: AppStrings.contactEmail,
          onPressed: () {},
        ),
      ],
    );
  }
}

class _TestimonialCard extends StatelessWidget {
  const _TestimonialCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
      ),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 32,
            backgroundColor: AppColors.primaryLight,
            child: Icon(Icons.person, size: 36, color: AppColors.primary),
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            '"${AppStrings.testimonialQuote}"',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.textPrimary,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            AppStrings.testimonialAuthor,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
