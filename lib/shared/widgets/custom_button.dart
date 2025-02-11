import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/theme/colors.dart';
import '../../shared/theme/text_theme.dart';
import 'flux_image.dart';

class KButton extends StatelessWidget {
  const KButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.width,
      this.hieght,
      this.isLoading = false,
      this.kFillColor,
      this.isFlat = false,
      this.iconPath,
      this.textColor,
      this.borderColor, this.bordrerRadius});

  final String title;
  final bool? isLoading;
  final Color? kFillColor;
  final Function() onPressed;
  final double? width, hieght,bordrerRadius;
  final String? iconPath;
  final bool isFlat;
  final Color? textColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return isLoading!
        ? FluxImage(
            imageUrl: "assets/json/busAnimate.json",
            height: Get.height * .15,
            alignment: Alignment.center,
          )
        : InkWell(
            onTap: isLoading ?? false ? null : onPressed,
            child: Container(
              decoration: BoxDecoration(
                  color: kFillColor ?? KColors.mainColor,
                  borderRadius: BorderRadius.circular(bordrerRadius??8),
                  border: Border.all(color: borderColor ?? Colors.transparent)),
              width: width ?? Get.width / 1.1,
              height: hieght ?? Get.height * .064,
              alignment: Alignment.center,
              child: FittedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (iconPath != null) ...[
                        FluxImage(
                          imageUrl: iconPath ?? '',
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                      ],
                      Text(
                        title,
                        style: KTextStyle.of(context)
                            .btnTitle
                            .copyWith(color: textColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
