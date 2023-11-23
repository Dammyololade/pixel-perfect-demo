
import 'package:flutter/material.dart';
import 'package:pixel_perfect_example/generated/assets.dart';
import 'package:pixel_perfect_example/main.dart';
import 'package:pixel_perfect_example/restart.dart';
import 'package:pixel_perfect_example/utils/colors.dart';
import 'package:pixel_perfect_example/utils/styles.dart';
import 'package:pixel_perfect_example/widgets/page_background.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePageOptimisedCompleted extends StatelessWidget {
  const WelcomePageOptimisedCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const PageBackground(),
          Image.asset(
            Assets.assetsBackTexture,
            height: MediaQuery.sizeOf(context).height / 2.2.h,
            width: double.infinity,
          ),
          const OptimisedDesign(),
        ],
      ),
    );
  }
}

class OptimisedDesign extends StatelessWidget {
  const OptimisedDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 70 * ScreenUtil().scaleHeight),
        InkWell(
          onTap: () {
            RestartWidget.restartApp(context, const NonOptimisedApp());
          },
          child: Text(
            'Tracking =\nPersonal Success',
            textAlign: TextAlign.center,
            style: const TextStyle().titleOptimised,
          ),
        ),
        SizedBox(
          height: 15 * ScreenUtil().scaleHeight
        ),
        Text(
          'Here’s why:',
          textAlign: TextAlign.center,
          style: const TextStyle().subTitleOptimised,
        ),
        SizedBox(
          height: 39.h,
        ),
        ItemBuilder(
            assetPath: Assets.assetsMeasure,
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'You can only improve\nwhat you ',
                    style: const TextStyle().contentOptimised,
                  ),
                  TextSpan(text: 'measure', style: const TextStyle().contentBoldOptimised)
                ]))),
        SizedBox(
          height: 24.h,
        ),
        ItemBuilder(
            assetPath: Assets.assetsTracking,
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Tracking increases\nyour ',
                    style: const TextStyle().contentOptimised,
                  ),
                  TextSpan(
                      text: 'self awareness', style: const TextStyle().contentBoldOptimised)
                ]))),
        SizedBox(
          height: 33.h,
        ),
        ItemBuilder(
            assetPath: Assets.assetsCorrelations,
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Find out ',
                    style: const TextStyle().contentOptimised,
                  ),
                  TextSpan(
                      text: 'correlations ', style: const TextStyle().contentBoldOptimised),
                  TextSpan(
                    text: 'you would have never found out otherwise',
                    style: const TextStyle().contentOptimised,
                  ),
                ]))),
        SizedBox(
          height: 40.h,
        ),
        ItemBuilder(
            assetPath: Assets.assetsDiary,
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Document & use it as ',
                    style: const TextStyle().contentOptimised,
                  ),
                  TextSpan(text: 'diary ', style: const TextStyle().contentBoldOptimised),
                  TextSpan(
                    text: '- it will be invaluable down the line',
                    style: const TextStyle().contentOptimised,
                  ),
                ]))),
        SizedBox(
          height: 34.h,
        ),
        ItemBuilder(
            assetPath: Assets.assetsAchievements,
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Set goals and ',
                    style: const TextStyle().contentOptimised,
                  ),
                  TextSpan(
                      text: 'celebrate achievements!',
                      style: const TextStyle().contentBoldOptimised),
                ]))),
        SizedBox(
          height: 53.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                RestartWidget.restartApp(context, const NonOptimisedApp());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "De-optimise design",
                    style: const TextStyle().button,
                  ),
                ],
              )),
        )
      ],
    );

  }
}

class ItemBuilder extends StatelessWidget {
  const ItemBuilder(
      {super.key,
        required this.assetPath,
        this.assetHeight = 60,
        this.assetWidth = 60,
        required this.child});

  final Widget child;
  final String assetPath;
  final double assetHeight, assetWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 43.w, right: 33.w),
      child: Row(
        children: [
          Image.asset(
            assetPath,
            height: assetHeight.h,
            width: assetWidth.h,
          ),
          SizedBox(
            width: 34.w,
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
