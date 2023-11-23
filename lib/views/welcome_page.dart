import 'package:flutter/material.dart';
import 'package:pixel_perfect_example/generated/assets.dart';
import 'package:pixel_perfect_example/main_optimised.dart';
import 'package:pixel_perfect_example/restart.dart';
import 'package:pixel_perfect_example/utils/colors.dart';
import 'package:pixel_perfect_example/utils/styles.dart';
import 'package:pixel_perfect_example/widgets/page_background.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const PageBackground(),
          Image.asset(
            Assets.assetsBackTexture,
            height: MediaQuery.sizeOf(context).height / 2.2,
            width: double.infinity,
          ),
          const WelcomeDesign(),
        ],
      ),
    );
  }
}

class WelcomeDesign extends StatelessWidget {
  const WelcomeDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 70,
        ),
        InkWell(
          onTap: () {
            RestartWidget.restartApp(context, const OptimisedApp());
          },
          child: Text(
            'Tracking =\nPersonal Success',
            textAlign: TextAlign.center,
            style: const TextStyle().title,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Here’s why:',
          textAlign: TextAlign.center,
          style: const TextStyle().subTitle,
        ),
        const SizedBox(
          height: 39,
        ),
        ItemBuilder(
            assetPath: Assets.assetsMeasure,
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: 'You can only improve\nwhat you ',
                style: const TextStyle().content,
              ),
              TextSpan(text: 'measure', style: const TextStyle().contentBold)
            ]))),
        const SizedBox(
          height: 24,
        ),
        ItemBuilder(
            assetPath: Assets.assetsTracking,
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: 'Tracking increases\nyour ',
                style: const TextStyle().content,
              ),
              TextSpan(
                  text: 'self awareness', style: const TextStyle().contentBold)
            ]))),
        const SizedBox(
          height: 33,
        ),
        ItemBuilder(
            assetPath: Assets.assetsCorrelations,
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: 'Find out ',
                style: const TextStyle().content,
              ),
              TextSpan(
                  text: 'correlations ', style: const TextStyle().contentBold),
              TextSpan(
                text: 'you would have never found out otherwise',
                style: const TextStyle().content,
              ),
            ]))),
        const SizedBox(
          height: 40,
        ),
        ItemBuilder(
            assetPath: Assets.assetsDiary,
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: 'Document & use it as ',
                style: const TextStyle().content,
              ),
              TextSpan(text: 'diary ', style: const TextStyle().contentBold),
              TextSpan(
                text: '- it will be invaluable down the line',
                style: const TextStyle().content,
              ),
            ]))),
        const SizedBox(
          height: 34,
        ),
        ItemBuilder(
            assetPath: Assets.assetsAchievements,
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: 'Set goals and ',
                style: const TextStyle().content,
              ),
              TextSpan(
                  text: 'celebrate achievements!',
                  style: const TextStyle().contentBold),
            ]))),
        const SizedBox(
          height: 53,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                RestartWidget.restartApp(context, const OptimisedApp());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Optimise Design",
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
      padding: const EdgeInsets.only(left: 43, right: 33),
      child: Row(
        children: [
          Image.asset(
            assetPath,
            height: assetHeight,
            width: assetWidth,
          ),
          const SizedBox(
            width: 34,
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
