import 'package:algo_viz/constants/constants.dart';
import 'package:algo_viz/core/designs/designs.dart';
import 'package:algo_viz/features/dashboard/presentation/ui/dashboard_page.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen(
      useImmersiveMode: true,
      duration: const Duration(milliseconds: 5000),
      nextScreen: const DashboardPage(),
      backgroundColor: AppColors.white,
      splashScreenBody: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Lottie.asset(
              ImageAssets.splash,
              repeat: false,
            ),
            const SizedBox(
              height: 5,
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: AppColors.black, fontSize: 20),
                children: [
                  TextSpan(
                    text: 'Algo ',
                    style: TextStyle(color: AppColors.black),
                  ),
                  TextSpan(
                    text: 'Viz',
                    style: TextStyle(color: AppColors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
