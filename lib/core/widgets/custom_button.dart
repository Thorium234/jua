import 'package:flutter/material.dart';

import '../../app/theme/app_spacing.dart';

enum CustomButtonType { filled, outlined }

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.type = CustomButtonType.filled,
  });

  final String label;
  final VoidCallback? onPressed;
  final CustomButtonType type;

  @override
  Widget build(BuildContext context) {
    return type == CustomButtonType.filled
        ? ElevatedButton(
            onPressed: onPressed,
            child: Text(label),
          )
        : OutlinedButton(
            onPressed: onPressed,
            child: Text(label),
          );
  }
}
