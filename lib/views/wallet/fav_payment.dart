import 'package:captain_iraq/shared/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/localization/trans.dart';
import '../../shared/theme/colors.dart';
import '../../shared/theme/helper.dart';
import '../../shared/theme/text_theme.dart';
import '../../shared/widgets/custom_button.dart';
import '../../shared/widgets/drop_down.dart';
import '../../shared/widgets/text_field.dart';
import '../../shared/widgets/titled_container.dart';

class FavPaymentMethod extends StatelessWidget {
  const FavPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitledContainer(
          title: "طريقة السحب",
        ),
        Expanded(
            child: Container(
          color: KColors.backgroundD,
          width: double.infinity,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                30.h,
                KDropdownBtn(
                    // minHeight: Get.height * .038,
                    hintColor: KColors.mainColor.withOpacity(.40),
                    btnDecoration: KHelper.of(context).circledTopContainer,
                    title: "طريقة السحب المفضلة",
                    onChanged: (p0) {},
                    items: []),
                40.h,
                KTextFormField(
                  // width: Get.width * .75,
                  // textFiledHieght: Get.height * .045,
                  // controller: nameController,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.person_outline,
                      color: KColors.mainColor,
                    ),
                    fillColor: KColors.whiteColor,
                    filled: true,
                    hintStyle: KTextStyle.of(context)
                        .ten
                        .copyWith(color: KColors.mainColor.withOpacity(.5)),
                    contentPadding: const EdgeInsets.only(right: 15),
                    hintText: 'الأسم بالكامل:',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(.5)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            color: KColors.mainColor.withOpacity(.5))),
                  ),

                  keyboardType: TextInputType.name,
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return Tr.get.field_required;
                    }
                    return null;
                  },
                ),
                20.h,
                KTextFormField(
                  // width: Get.width * .75,
                  // textFiledHieght: Get.height * .045,
                  // controller: nameController,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.phone_android,
                      color: KColors.mainColor,
                    ),
                    fillColor: KColors.whiteColor,
                    filled: true,
                    hintStyle: KTextStyle.of(context)
                        .ten
                        .copyWith(color: KColors.mainColor.withOpacity(.5)),
                    contentPadding: const EdgeInsets.only(right: 15),
                    hintText: 'رقم الهاتف:',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(.5)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            color: KColors.mainColor.withOpacity(.5))),
                  ),

                  keyboardType: TextInputType.phone,
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return Tr.get.field_required;
                    }
                    return null;
                  },
                ),
                20.h,
                KTextFormField(
                  // width: Get.width * .75,
                  // textFiledHieght: Get.height * .045,
                  // controller: nameController,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.credit_card,
                      color: KColors.mainColor,
                    ),
                    fillColor: KColors.whiteColor,
                    filled: true,
                    hintStyle: KTextStyle.of(context)
                        .ten
                        .copyWith(color: KColors.mainColor.withOpacity(.5)),
                    contentPadding: const EdgeInsets.only(right: 15),
                    hintText: 'رقم البطاقة:',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(.5)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            color: KColors.mainColor.withOpacity(.5))),
                  ),

                  keyboardType: TextInputType.number,
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return Tr.get.field_required;
                    }
                    return null;
                  },
                ),
                60.h,
                Padding(
                  padding: EdgeInsets.only(bottom: Get.height * .2),
                  child: KButton(
                    title: "تأكيد",
                    onPressed: () {},
                    kFillColor: KColors.mainColor,
                    textColor: KColors.whiteColor,
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
