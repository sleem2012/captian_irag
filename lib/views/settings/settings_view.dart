import 'package:captain_iraq/shared/extensions.dart';
import 'package:captain_iraq/shared/theme/text_theme.dart';
import 'package:captain_iraq/shared/widgets/flux_image.dart';
import 'package:flutter/material.dart';
import '../../shared/route/nav_helper.dart';
import '../../shared/theme/colors.dart';
import '../../shared/widgets/titled_container.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitledContainer(
          title: "الأعدادات",
        ),
        Expanded(
            child: Container(
          color: KColors.backgroundD,
          width: double.infinity,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                50.h,
                CustomSettingCard(
                  backColor: const Color(0xFF1BA3EB),
                  image: 'assets/images/lock.svg',
                  keyText: 'تغيير كلمة المرور',
                  avatarColor: const Color(0xffE4F7FF),
                  onNavigate: () {
                    NavHelper.of(context).navigateChangePass;
                  },
                ),
                20.h,
                CustomSettingCard(
                  backColor: const Color(0xffFC7632),
                  image: 'assets/images/settings.png',
                  keyText: 'تحرير الرحلة',
                  avatarColor: const Color(0xffFFE7ED),
                  onNavigate: () {
                    NavHelper.of(context).navigateFreeTrip;
                  },
                ),
                20.h,

                //TODO:طرق السحب  المفضله

                // CustomSettingCard(
                //   backColor: const Color(0xff5431FB),
                //   image: 'assets/images/pay_method.svg',
                //   keyText: 'طريقة السحب المفضلة',
                //   avatarColor: const Color(0xffECEAFF),
                //   onNavigate: () {
                //     NavHelper.of(context).navigateFavPayment;
                //   },
                // ),
              ],
            ),
          ),
        ))
      ],
    );
  }
}

class CustomSettingCard extends StatelessWidget {
  const CustomSettingCard({
    super.key,
    required this.backColor,
    required this.keyText,
    required this.image,
    required this.avatarColor,
    required this.onNavigate,
  });

  final Color backColor, avatarColor;
  final String keyText, image;
  final void Function() onNavigate;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onNavigate,
      child: Container(
        decoration: BoxDecoration(
          color: backColor,
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: avatarColor,
                  radius: 25,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: FluxImage(
                      imageUrl: image,
                    ),
                  ),
                ),
                15.w,
                Text(keyText, style: KTextStyle.of(context).fifteen),
              ],
            ),
            const FluxImage(
              imageUrl: "assets/images/arrow_circle.svg",
            )
          ],
        ),
      ),
    );
  }
}
