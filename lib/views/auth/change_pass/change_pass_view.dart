import 'package:captain_iraq/shared/extensions.dart';
import 'package:captain_iraq/shared/route/nav_helper.dart';
import 'package:captain_iraq/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../shared/localization/trans.dart';
import '../../../shared/theme/colors.dart';
import '../../../shared/widgets/text_field.dart';
import '../../../shared/widgets/titled_container.dart';

class ChangePassView extends StatelessWidget {
  const ChangePassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitledContainer(
          title: "تغيير كلمة المرور",
        ),
        Expanded(
            child: Container(
          color: KColors.backgroundD,
          width: double.infinity,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                50.h,
                KTextFormField(
                  // controller: login.passController,

                  labelText: "ادخل كلمة المرور القديمة",

                  upperTitle: "كلمة المرور*",
                  // obscureText: login.isVisible,
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return Tr.get.pass_validation;
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,

                  suffixIcon: IconButton(
                    // icon: login.isVisible
                    //     ? Icon(Icons.visibility_off_outlined,
                    //     color: KColors.blackColor.withOpacity(.4))
                    //     : Icon(Icons.visibility_outlined,
                    //     color: KColors.blackColor.withOpacity(.4)),
                    icon: Icon(Icons.visibility_outlined),

                    onPressed: () {
                      // login.togglePassV();
                    },
                  ),
                ),
                25.h,
                KTextFormField(
                  // controller: login.passController,

                  labelText: "ادخل كلمة المرور الجديدة*",

                  upperTitle: "كلمة المرور الجديدة*",
                  // obscureText: login.isVisible,
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return Tr.get.pass_validation;
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,

                  suffixIcon: IconButton(
                    // icon: login.isVisible
                    //     ? Icon(Icons.visibility_off_outlined,
                    //     color: KColors.blackColor.withOpacity(.4))
                    //     : Icon(Icons.visibility_outlined,
                    //     color: KColors.blackColor.withOpacity(.4)),
                    icon: Icon(Icons.visibility_outlined),

                    onPressed: () {
                      // login.togglePassV();
                    },
                  ),
                ),
                25.h,
                KTextFormField(
                  // controller: login.passController,

                  labelText: "ادخل تأكيد كلمة المرور الجديدة*",

                  upperTitle: "تأكيد كلمة المرور الجديدة*",
                  // obscureText: login.isVisible,
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return Tr.get.pass_validation;
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,

                  suffixIcon: IconButton(
                    // icon: login.isVisible
                    //     ? Icon(Icons.visibility_off_outlined,
                    //     color: KColors.blackColor.withOpacity(.4))
                    //     : Icon(Icons.visibility_outlined,
                    //     color: KColors.blackColor.withOpacity(.4)),
                    icon: Icon(Icons.visibility_outlined),

                    onPressed: () {
                      // login.togglePassV();
                    },
                  ),
                ),
                30.h,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: KButton(
                        title: "حفظ التغييرات",
                        onPressed: () {},
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 2,
                      child: KButton(
                        kFillColor: KColors.whiteColor,
                        borderColor: KColors.mainColor,
                        textColor: KColors.mainColor,
                        title: "رجوع",
                        onPressed: () {
                          NavHelper.of(context).navigateToSettings;
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ))
      ],
    );
  }
}
