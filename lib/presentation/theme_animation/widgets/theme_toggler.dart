import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../application/theme_service.dart';

class ThemeToggleContainer extends StatelessWidget {
  const ThemeToggleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return Container(
          height: 225,
          width: double.infinity,
          decoration: BoxDecoration(
            color: themeService.isDarkModeOn ? Colors.grey[800] : Colors.white,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                themeService.isDarkModeOn ? 'To Light?' : 'To Dark?',
                style: const TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                themeService.isDarkModeOn
                    ? 'Let the sun rise'
                    : 'Let the night come',
                style:
                    const TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 5),
              Switch(
                value: themeService.isDarkModeOn,
                onChanged: (value) => themeService.toggleTheme(),
              ),
            ],
          ),
        );
      },
    );
  }
}
