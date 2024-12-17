import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../application/theme_service.dart';
import 'widgets/animation_container.dart';
import 'widgets/moon.dart';
import 'widgets/star.dart';
import 'widgets/sun.dart';
import 'widgets/sunshine.dart';
import 'widgets/theme_toggler.dart';

class ThemeAnimationScreen extends StatelessWidget {
  const ThemeAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Theme Animation'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AnimationContainer(
            child: Consumer<ThemeService>(
              builder: (context, themeService, child) {
                return Stack(
                  children: [
                    Positioned(
                      top: 90,
                      right: 70,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        child: const Star(),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 40,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        child: const Star(),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      right: 100,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        child: const Star(),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 100,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        child: const Star(),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 40,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        child: const Star(),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 80,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        child: const Star(),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 160,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        child: const Star(),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 120,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        child: const Star(),
                      ),
                    ),

                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 400),
                      top: themeService.isDarkModeOn ? 100 : 130,
                      right: themeService.isDarkModeOn ? 100 : -40,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        child: const Moon(),
                      ),
                    ),
                    AnimatedPadding(
                      duration: const Duration(milliseconds: 200),
                      padding: EdgeInsets.only(
                        top: themeService.isDarkModeOn ? 110 : 50,
                      ),
                      child: const Center(
                        child: Sunshine(
                          radius: 160,
                          child: Sunshine(
                            radius: 120,
                            child: Sunshine(
                              radius: 80,
                              child: Sun(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: ThemeToggleContainer(),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
