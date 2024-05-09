import 'package:captain_iraq/di.dart';
import 'package:captain_iraq/logic/get_trips/get_trips_bloc.dart';
import 'package:captain_iraq/logic/get_trips/get_trips_state.dart';
import 'package:captain_iraq/logic/transfer_trip/transfer_trip_bloc.dart';
import 'package:captain_iraq/logic/transfer_trip/transfer_trip_state.dart';
import 'package:captain_iraq/logic/update_trip_status/update_trip_status_bloc.dart';
import 'package:captain_iraq/logic/update_trip_status/update_trip_status_state.dart';
import 'package:captain_iraq/shared/extensions.dart';
import 'package:captain_iraq/shared/route/nav_helper.dart';
import 'package:captain_iraq/shared/theme/helper.dart';
import 'package:captain_iraq/shared/theme/text_theme.dart';
import 'package:captain_iraq/shared/widgets/custom_button.dart';
import 'package:captain_iraq/shared/widgets/flux_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../shared/theme/colors.dart';
import '../../shared/widgets/titled_container.dart';

class TripInformationView extends StatelessWidget {
  const TripInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitledContainer(
          title: "معلومات الرحلة",
        ),
        MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => Di.updateTrip,
            ),
            BlocProvider(
              create: (context) => Di.transfer,
            ),
          ],
          child: Expanded(
              child: Container(
            color: KColors.backgroundD,
            width: double.infinity,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: BlocBuilder<GetTripsBloc, GetTripsState>(
                builder: (context, state) {
                  final selectedTrip = GetTripsBloc.of(context).selectedTrip;
                  return Column(
                    children: [
                      Row(
                        children: [
                          BlocConsumer<UpdateTripStatusBloc,
                              UpdateTripStatusState>(
                            listener: (context, state) {
                              state.whenOrNull(success: (message) => KHelper.showSnackBar(message),);
                            },

                            builder: (context, state) {
                              final update = UpdateTripStatusBloc.of(context);
                              return Expanded(
                                flex: 2,
                                child: KButton(
                                  isLoading:
                                      state is UpdateTripStatusStateLoading,
                                  title: "تبليغ لبدء الرحلة",
                                  onPressed: () {
                                    update.update(
                                        id: selectedTrip.id.toString(),
                                        status: "4");
                                  },
                                  kFillColor: const Color(0xFF84B740),
                                ),
                              );
                            },
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          BlocConsumer<TransferTripBloc, TransferTripState>(
                          listener: (context, state) {
                            state.whenOrNull(success: (message) => KHelper.showSnackBar(message),);
                          },

                            builder: (context, state) {
                              final transfer = TransferTripBloc.of(context);
                              return Expanded(
                                flex: 2,
                                child: KButton(
                                  isLoading: state is TransferTripStateLoading,
                                  title: "تحويل الرحلة",
                                  onPressed: () {
                                    transfer.transfer(
                                        id: selectedTrip.id.toString());
                                  },
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      20.h,
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 17, horizontal: 11),
                        decoration: KHelper.of(context)
                            .titledContainer
                            .copyWith(
                                border: Border.all(
                                    color: KColors.mainColor.withOpacity(.54))),
                        child: Column(
                          children: [
                            Text(
                              "معلومات الرحلة",
                              style: KTextStyle.of(context)
                                  .ten
                                  .copyWith(color: KColors.mainColor),
                            ),
                            25.h,
                            Row(
                              children: [
                                const FluxImage(
                                    imageUrl: "assets/images/from-to.svg"),
                                5.w,
                                Text(
                                  selectedTrip.name ?? '',
                                  style: KTextStyle.of(context)
                                      .ten
                                      .copyWith(color: KColors.blackColor),
                                ),
                              ],
                            ),
                            15.h,
                            ...List.generate(
                                4,
                                (index) => Padding(
                                      padding: EdgeInsets.only(bottom: 12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TripTextRichWithIcon(
                                            keyText: 'اسم المسافر:',
                                            valueText: selectedTrip
                                                    .tickets?[index].userName ??
                                                '',
                                            imagePath:
                                                'assets/images/contact.svg',
                                          ),
                                          TripTextRichWithIcon(
                                            keyText: 'رقم الحجز:',
                                            valueText: selectedTrip
                                                    .tickets?[index]
                                                    .pnrNumber ??
                                                '',
                                            imagePath:
                                                'assets/images/ref_num.svg',
                                          ),
                                        ],
                                      ),
                                    )),
                          ],
                        ),
                      ),
                      30.h,

                      //TODO:ابدا الرحله

                      // Padding(
                      //   padding: EdgeInsets.only(bottom: Get.height * .2),
                      //   child: KButton(
                      //     title: "ابدء الرحلة الان",
                      //     onPressed: () {
                      //       NavHelper.of(context).navigateToStartTripView;
                      //     },
                      //     hieght: 55,
                      //     bordrerRadius: 34,
                      //     width: Get.width * .7,
                      //   ),
                      // ),
                    ],
                  );
                },
              ),
            ),
          )),
        )
      ],
    );
  }
}

class TripTextRichWithIcon extends StatelessWidget {
  const TripTextRichWithIcon(
      {super.key,
      required this.keyText,
      required this.valueText,
      required this.imagePath});

  final String keyText, valueText, imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FluxImage(imageUrl: imagePath),
        5.w,
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '$keyText  ',
                  style: KTextStyle.of(context)
                      .ten
                      .copyWith(color: KColors.blackColor)),
              TextSpan(
                text: valueText,
                style: KTextStyle.of(context)
                    .ten
                    .copyWith(color: KColors.mainColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
