import 'package:captain_iraq/shared/theme/text_theme.dart';
import 'package:captain_iraq/shared/widgets/flux_image.dart';
import 'package:flutter/material.dart';
// import '../../../shared/api_client/endpoints.dart';

import '../../shared/theme/colors.dart';
import '../../shared/widgets/titled_container.dart';
import 'client_accounts_list.dart';

class AccountsHistory extends StatelessWidget {
  const AccountsHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitledContainer(
          title: "سجل الحسابات",
        ),
        Expanded(
          child: Container(
            color: KColors.backgroundD,
            width: double.infinity,
            child: const ClientAccountsList(),
          ),
        )
      ],
    );
  }
}

class TextRichWithIcon extends StatelessWidget {
  const TextRichWithIcon(
      {super.key,
      required this.keyText,
      required this.valueText,
      required this.imagePath});

  final String keyText, valueText, imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '$keyText  ',
                  style: KTextStyle.of(context)
                      .ten
                      .copyWith(color: KColors.mainColor)),
              TextSpan(
                text: valueText,
                style: KTextStyle.of(context)
                    .ten
                    .copyWith(color: KColors.blackColor.withOpacity(.53)),
              ),
            ],
          ),
        ),
        FluxImage(imageUrl: imagePath)
      ],
    );
  }
}
