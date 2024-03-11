import 'package:captain_iraq/shared/extensions.dart';
import 'package:captain_iraq/shared/theme/text_theme.dart';
import 'package:captain_iraq/shared/widgets/custom_button.dart';
import 'package:captain_iraq/shared/widgets/flux_image.dart';
import 'package:captain_iraq/views/trip/trip_info_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/theme/colors.dart';
import '../../shared/widgets/titled_container.dart';

class StartTripView extends StatelessWidget {
  const StartTripView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitledContainer(
          title: "بدء الرحلة",
        ),
        Expanded(
            child: Container(
                color: KColors.backgroundD,
                width: double.infinity,
                child: Stack(
                  children: [
                    const FluxImage(
                      imageUrl: 'assets/images/map.png',
                    ),
                    Positioned(
                      bottom: Get.height * .13,
                      child: Container(
                        width: Get.width,
                        padding: const EdgeInsets.all(8),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TripTextRichWithIcon(
                                      keyText: 'اسم المسافر:',
                                      valueText: 'حسن علي',
                                      imagePath: 'assets/images/contact.svg',
                                    ),
                                    10.h,
                                    const TripTextRichWithIcon(
                                      keyText: 'العنوان الاقرب اليك:',
                                      valueText: 'شارع الحر',
                                      imagePath: 'assets/images/from-to.svg',
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "PNR:454543",
                                      style: KTextStyle.of(context)
                                          .fifteen
                                          .copyWith(color: KColors.mainColor),
                                    ),
                                    5.h,
                                    const FluxImage(
                                        imageUrl:
                                            "assets/images/qr-code-icon 1.svg")
                                  ],
                                )
                              ],
                            ),
                            Center(
                              child: KButton(
                                title: "متابعة",
                                onPressed: () {},
                                width: Get.width * .3,
                                hieght: Get.height * .04,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )))
      ],
    );
  }
}
