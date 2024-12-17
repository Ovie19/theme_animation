import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'application/theme_service.dart';
import 'presentation/theme_animation/theme_animation_screen.dart';
import 'theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeService(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
          themeMode:
              themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lightMode,
          darkTheme: AppTheme.darkMode,
          debugShowCheckedModeBanner: false,
          home: const ThemeAnimationScreen(),
        );
      },
    );
  }
}
