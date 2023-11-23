import 'package:flutter/material.dart';
import 'package:pixel_perfect_example/restart.dart';
import 'package:pixel_perfect_example/utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixel_perfect_example/views/welcome_page_optimised_initial.dart';

void main() async{
  runApp(const RestartWidget(child: OptimisedApp()));
}

class OptimisedApp extends StatelessWidget {
  const OptimisedApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: false,
      builder: (_, ct) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: "SFProDisplay",
          textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          useMaterial3: true,
        ),
        home: const WelcomePageOptimised(),
      ),
    );
  }
}
