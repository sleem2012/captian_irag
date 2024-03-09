import 'package:captain_iraq/shared/extensions.dart';
import 'package:captain_iraq/shared/theme/colors.dart';
import 'package:captain_iraq/shared/theme/helper.dart';
import 'package:captain_iraq/shared/theme/text_theme.dart';
import 'package:captain_iraq/shared/widgets/custom_button.dart';
import 'package:captain_iraq/shared/widgets/flux_image.dart';
import 'package:captain_iraq/views/home/widget/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../shared/route/nav_helper.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const CustomHeader(),
        20.h,
        Expanded(
            child: Container(
          // color: KColors.whiteColor,
          decoration: KHelper.of(context).circledTopContainer,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                10.h,
                const HomeSlider(
                    // bannerImages: bannerImages,
                    ),
                15.h,
                Text(
                  "اشعارات",
                  style: KTextStyle.of(context).ten.copyWith(
                        color: KColors.blackColor,
                      ),
                ),
                30.h,
                Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: KHelper.of(context).shadowContainer,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("رحتلك القادمة بعد 3 ساعات",
                                    style: KTextStyle.of(context)
                                        .ten
                                        .copyWith(color: KColors.mainColor)),
                                10.h,
                                Text(
                                  "رحتلك القادمة بعد 30 دقيقة",
                                  style: KTextStyle.of(context)
                                      .ten
                                      .copyWith(color: KColors.mainColor),
                                )
                              ],
                            ),
                            const FluxImage(
                                imageUrl: "assets/images/sand_time.png")
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: -Get.height * .05,
                        child: const FluxImage(
                            imageUrl: "assets/images/big_notification.png")),
                  ],
                ),
                40.h,
                InkWell(
                  onTap: () {
                    NavHelper.of(context).navToReservationHistory;
                  },
                  child: Container(
                    decoration: KHelper.of(context).outLined,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("سجل الحجوزات",
                              style: KTextStyle.of(context)
                                  .ten
                                  .copyWith(color: KColors.mainColor)),
                          const Icon(
                            FontAwesomeIcons.sort,
                            color: KColors.lightBlack,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                70.h,
                Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: KButton(
                    title: "المحفظة",
                    onPressed: () {
                      NavHelper.of(context).navigateToWallet;
                    },
                    kFillColor: KColors.lightGreen,
                    iconPath: "assets/images/wallet.png",
                    textColor: KColors.greenColor,
                    borderColor: KColors.greenColor,
                    hieght: 74,
                    width: double.infinity,
                  ),
                ),
              ],
            ),
          ),
        ))
      ],
    );
  }
}
