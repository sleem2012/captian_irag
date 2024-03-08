import 'package:captain_iraq/shared/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../shared/widgets/flux_image.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: KColors.mainColor,
      body: FluxImage(imageUrl:'assets/json/splash_animation.json'),
    );
  }
}
