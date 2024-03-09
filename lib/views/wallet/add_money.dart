import 'package:captain_iraq/shared/extensions.dart';
import 'package:captain_iraq/shared/theme/text_theme.dart';
import 'package:captain_iraq/shared/widgets/flux_image.dart';
import 'package:captain_iraq/shared/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shared/localization/trans.dart';
import '../../shared/theme/colors.dart';
import '../../shared/widgets/custom_button.dart';
import '../../shared/widgets/custom_radio_listtile.dart';
import '../../shared/widgets/titled_container.dart';

class AddMoneyView extends StatelessWidget {
  const AddMoneyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitledContainer(
          title: "طلب سحب",
        ),
        Expanded(
            child: Container(
              color: KColors.backgroundD,
              width: double.infinity,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    20.h,
                    KTextFormField(
                      labelText: 'المبلغ',
                      keyboardType: TextInputType.number,
                      suffixIcon: Stack(
                        alignment: Alignment.center,
                        children: [
                          const FluxImage(
                            imageUrl: 'assets/images/iqd.png',
                          ),
                          Text(
                            'IQD',
                            style: KTextStyle
                                .of(context)
                                .fifteen
                                .copyWith(color: KColors.mainColor),
                          )
                        ],
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return Tr.get.field_required;
                        }
                        return null;
                      },
                    ),
                    30.h,
                    CustomRadioListTile(valueChanged: (int value) {
                      print(value);
                    },),
                    30.h,
                    Padding(
                      padding: EdgeInsets.only(bottom: Get.height * .2),
                      child: KButton(
                        title: "سحب الأن",
                        onPressed: () {
                        },
                        kFillColor: KColors.mainColor,
                        textColor: KColors.whiteColor,
                        // borderColor: KColors.greenColor,
                        hieght: 64,
                        width: Get.width*.85,
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

