import 'package:captain_iraq/shared/extensions.dart';
import 'package:captain_iraq/shared/route/nav_helper.dart';
import 'package:captain_iraq/shared/theme/helper.dart';
import 'package:captain_iraq/shared/theme/text_theme.dart';
import 'package:captain_iraq/shared/widgets/custom_button.dart';
import 'package:captain_iraq/shared/widgets/flux_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/theme/colors.dart';
import '../../shared/widgets/titled_container.dart';

class TripInformationView extends StatelessWidget {
  const TripInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitledContainer(
          title: "معلومات الرحلة",
        ),
        Expanded(
            child: Container(
          color: KColors.backgroundD,
          width: double.infinity,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: KButton(
                        title: "تبليغ لبدء الرحلة",
                        onPressed: () {},
                        kFillColor: const Color(0xFF84B740),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 2,
                      child: KButton(
                        title: "تحويل الرحلة",
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                20.h,
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 17, horizontal: 11),
                  decoration: KHelper.of(context).titledContainer.copyWith(
                      border: Border.all(
                          color: KColors.mainColor.withOpacity(.54))),
                  child: Column(
                    children: [
                      Text(
                        "معلومات الرحلة",
                        style: KTextStyle.of(context)
                            .ten
                            .copyWith(color: KColors.mainColor),
                      ),
                      25.h,
                      Row(
                        children: [
                          const FluxImage(
                              imageUrl: "assets/images/from-to.svg"),
                          5.w,
                          Text(
                            "رحلة بغداد الى كربلاء",
                            style: KTextStyle.of(context)
                                .ten
                                .copyWith(color: KColors.blackColor),
                          ),
                        ],
                      ),
                      15.h,
                      ...List.generate(
                          4,
                          (index) => const Padding(
                                padding: EdgeInsets.only(bottom: 12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TripTextRichWithIcon(
                                      keyText: 'اسم المسافر:',
                                      valueText: 'حسن علي',
                                      imagePath: 'assets/images/contact.svg',
                                    ),
                                    TripTextRichWithIcon(
                                      keyText: 'رقم الحجز:',
                                      valueText: 'PNR:454543',
                                      imagePath: 'assets/images/ref_num.svg',
                                    ),
                                  ],
                                ),
                              )),
                    ],
                  ),
                ),
                30.h,
                Padding(
                  padding: EdgeInsets.only(bottom: Get.height * .2),
                  child: KButton(
                    title: "ابدء الرحلة الان",
                    onPressed: () {
                      NavHelper.of(context).navigateToStartTripView;
                    },
                    hieght: 55,
                    bordrerRadius: 34,
                    width: Get.width * .7,
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

class TripTextRichWithIcon extends StatelessWidget {
  const TripTextRichWithIcon(
      {super.key,
      required this.keyText,
      required this.valueText,
      required this.imagePath});

  final String keyText, valueText, imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FluxImage(imageUrl: imagePath),
        5.w,
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '$keyText  ',
                  style: KTextStyle.of(context)
                      .ten
                      .copyWith(color: KColors.blackColor)),
              TextSpan(
                text: valueText,
                style: KTextStyle.of(context)
                    .ten
                    .copyWith(color: KColors.mainColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
