import 'package:captain_iraq/shared/cache/locale_storage.dart';
import 'package:captain_iraq/shared/extensions.dart';
import 'package:captain_iraq/shared/route/nav_helper.dart';
import 'package:captain_iraq/shared/theme/colors.dart';
import 'package:captain_iraq/shared/theme/text_theme.dart';
import 'package:captain_iraq/shared/widgets/action_dialog.dart';
import 'package:captain_iraq/shared/widgets/flux_image.dart';
import 'package:captain_iraq/shared/widgets/icon_button.dart';
import 'package:captain_iraq/shared/widgets/nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../views/splash_screen/splash_screen.dart';
import 'constants.dart';
import 'localization/trans.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  const CustomHeader({
    super.key,
    this.showNotification = true,
    this.showClientName = false,
    this.showClientImage = false,
    this.showTitle = false,
  });

  final bool showClientName, showClientImage, showTitle, showNotification;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          15.h,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (showClientImage)
                      const CircleAvatar(
                        child: FluxImage(
                          imageUrl: Constant.appLogo,
                        ),
                      ),
                    8.w,
                    if (showClientName)
                      Text(
                        KStorage.i.getUserInfo?.data?.username ?? '',
                        style: KTextStyle.of(context).ten,
                      )
                  ],
                ),
                if (showTitle)
                  Text(
                    "الرحلات المباشرة",
                    style: KTextStyle.of(context).fifteen,
                  ),
                Row(
                  children: [
                    KIconButton(
                        onPressed: () async {
                          ActionDialog(
                            title: Tr.get.log_out,
                            approveAction: Tr.get.yes_message,
                            cancelAction: Tr.get.no_message,
                            onApproveClick: ()async {
                              Navigator.pop(context);
                              await KStorage.i.erase;
                              Nav.offAll(const SplashScreen(),);
                            },
                            onCancelClick: () {
                              Navigator.pop(context);
                            },
                          ).show<void>(context);

                        },
                        child: const Icon(Icons.logout,size: 20,)
                    ),
                    10.w,

                    if (showNotification)
                      KIconButton(
                        onPressed: () {
                          NavHelper.of(context).navigateToNotification;
                        },
                        child: const FluxImage(
                          imageUrl: "assets/images/notification.png",
                          color: KColors.accentColor,
                        ),
                      ),
                    10.w,
                    KIconButton(
                      onPressed: () {
                        NavHelper.of(context).goHome;
                      },
                      child: const FluxImage(
                        imageUrl: "assets/images/home.png",
                        color: KColors.accentColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(0, Get.height * .08);
}
