import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../application/theme_service.dart';

class AnimationContainer extends StatelessWidget {
  const AnimationContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, _) {
        return Container(
          height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: themeService.isDarkModeOn
                    ? Colors.white24
                    : Colors.grey.withOpacity(0.2),
                blurRadius: 3,
                spreadRadius: 5,
                offset: const Offset(0, 2),
              )
            ],
            gradient: LinearGradient(
              colors: themeService.isDarkModeOn
                  ? const [
                Color(0xFF94A9FF),
                Color(0xFF6B66CC),
                Color(0xFF200F75),
              ]
                  : const [
                Color(0xDDFFFA66),
                Color(0xDDFFA057),
                Color(0xDD940B99),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: child,
        );
      },
      child: child,
    );
  }
}
