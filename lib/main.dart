import 'package:flutter/material.dart';
import 'package:pixel_perfect_example/restart.dart';
import 'package:pixel_perfect_example/utils/colors.dart';
import 'package:pixel_perfect_example/views/welcome_page.dart';

void main() {
  runApp(const RestartWidget(child: NonOptimisedApp()));
}

class NonOptimisedApp extends StatelessWidget {
  const NonOptimisedApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "SFProDisplay",
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}
