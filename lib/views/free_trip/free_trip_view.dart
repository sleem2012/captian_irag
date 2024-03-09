import 'package:captain_iraq/shared/extensions.dart';
import 'package:captain_iraq/shared/theme/helper.dart';
import 'package:captain_iraq/shared/widgets/drop_down.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../shared/date_container.dart';
import '../../shared/theme/colors.dart';
import '../../shared/widgets/custom_button.dart';
import '../../shared/widgets/titled_container.dart';

class FreeTripsView extends StatelessWidget {
  const FreeTripsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitledContainer(
          title: "تحرير الرحلات",
        ),
        Expanded(
            child: Container(
          color: KColors.backgroundD,
          width: double.infinity,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                60.h,
                KDropdownBtn(
                  title: "خط الرحلة",
                  onChanged: (p0) {},
                  hintColor: KColors.mainColor,
                  items: [],
                  btnDecoration: KHelper.of(context)
                      .outLined
                      .copyWith(color: KColors.whiteColor),
                ),
                33.h,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DateContainer(
                      title: 'وقت:',
                      onPressed: (String value) {},
                    ),
                    DateContainer(
                      dropDown: true,
                      title: 'ايام عطل',
                      onPressed: (String value) {},
                      firstContainerColor: KColors.redColor.withOpacity(.18),
                      firstTextColor: KColors.redColor,
                    )
                  ],
                ),
                70.h,
                Padding(
                  padding: EdgeInsets.only(bottom: Get.height * .2),
                  child: KButton(
                    title: "تأكيد",
                    onPressed: () {
                    },
                    kFillColor: KColors.mainColor,
                    textColor: KColors.whiteColor,
                    // borderColor: KColors.greenColor,
                    hieght: 55,
                    width: double.infinity,
                    bordrerRadius: 34,

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
