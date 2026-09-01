import 'package:flutter_test/flutter_test.dart';

import 'package:jua/app/app.dart';
import 'package:jua/core/constants/app_strings.dart';

void main() {
  testWidgets('Landing screen renders hero and CTAs', (WidgetTester tester) async {
    await tester.pumpWidget(const JuaApp());

    expect(find.text('Jua'), findsOneWidget);
    expect(find.text(AppStrings.landingHeadline), findsOneWidget);
    expect(find.text(AppStrings.landingPrimaryCta), findsOneWidget);
    expect(find.text(AppStrings.landingSecondaryCta), findsOneWidget);
  });
}
