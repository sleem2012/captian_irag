import 'package:captain_iraq/di.dart';
import 'package:captain_iraq/logic/get_wallet_amount/get_wallet_amount_bloc.dart';
import 'package:captain_iraq/logic/get_wallet_amount/get_wallet_amount_bloc.dart';
import 'package:captain_iraq/shared/extensions.dart';
import 'package:captain_iraq/shared/theme/text_theme.dart';
import 'package:captain_iraq/shared/widgets/flux_image.dart';
import 'package:captain_iraq/shared/widgets/loading/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../../logic/get_wallet_amount/get_wallet_amount_state.dart';
import '../../shared/route/nav_helper.dart';
import '../../shared/theme/colors.dart';
import '../../shared/widgets/custom_button.dart';
import '../../shared/widgets/titled_container.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitledContainer(
          title: "المحفظة",
        ),
        BlocProvider(
          create: (context) => Di.getWalletAmount..get(),
          child: BlocBuilder<GetWalletAmountBloc, GetWalletAmountState>(
            builder: (context, state) {
              final amount=state.whenOrNull(success: (model) => model.data,);
              return Expanded(
                  child: Container(
                color: KColors.backgroundD,
                width: double.infinity,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: KRequestOverlay(
                    isLoading: state is GetWalletAmountStateLoading,
                    child: Column(
                      children: [
                        50.h,
                         CustomWalletCard(
                            mainColor: const Color(0xff59B179),
                            backColor: const Color(0xffD9F2E2),
                            shadowColor: const Color(0x894ADE80),
                            keyText: 'مستحقات',
                            valueText: '${amount?.currentBalance} دينار',
                            image: 'assets/images/mostakat.svg'),
                        30.h,
                         CustomWalletCard(
                            mainColor: const Color(0xFFB15959),
                            backColor: const Color(0xFFF2D9D9),
                            shadowColor: const Color(0x93B15959),
                            keyText: 'رصيد معلق',
                            valueText: '${amount?.suspendedBalance} دينار',
                            image: 'assets/images/rassed_moalq.svg'),
                        50.h,


                        //TODO:طلب سحب
                        // Padding(
                        //   padding: EdgeInsets.only(bottom: Get.height * .2),
                        //   child: KButton(
                        //     title: "طلب سحب",
                        //     onPressed: () {
                        //       NavHelper.of(context).navigateAddMoney;
                        //     },
                        //     kFillColor: KColors.mainColor,
                        //     iconPath: "assets/images/withdraw_request.svg",
                        //     textColor: KColors.whiteColor,
                        //     // borderColor: KColors.greenColor,
                        //     hieght: 64,
                        //     width: double.infinity,
                        //     bordrerRadius: 34,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ));
            },
          ),
        )
      ],
    );
  }
}

class CustomWalletCard extends StatelessWidget {
  const CustomWalletCard({
    super.key,
    required this.mainColor,
    required this.backColor,
    required this.shadowColor,
    required this.keyText,
    required this.valueText,
    required this.image,
  });

  final Color mainColor, backColor, shadowColor;
  final String keyText, valueText, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              blurRadius: 4,
              offset: const Offset(0, 2),
              spreadRadius: 0,
            )
          ]),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FluxImage(
                imageUrl: image,
                color: mainColor,
              ),
              10.w,
              Text(
                keyText,
                style:
                    KTextStyle.of(context).fifteen.copyWith(color: mainColor),
              ),
            ],
          ),
          Text(
            valueText,
            style: KTextStyle.of(context).fifteen.copyWith(color: mainColor),
          ),
        ],
      ),
    );
  }
}
