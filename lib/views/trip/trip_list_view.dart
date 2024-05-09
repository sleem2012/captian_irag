import 'package:captain_iraq/di.dart';
import 'package:captain_iraq/logic/get_trips/get_trips_bloc.dart';
import 'package:captain_iraq/logic/get_trips/get_trips_bloc.dart';
import 'package:captain_iraq/shared/extensions.dart';
import 'package:captain_iraq/shared/route/nav_helper.dart';
import 'package:captain_iraq/shared/theme/helper.dart';
import 'package:captain_iraq/shared/theme/text_theme.dart';
import 'package:captain_iraq/shared/widgets/custom_button.dart';
import 'package:captain_iraq/shared/widgets/flux_image.dart';
import 'package:captain_iraq/shared/widgets/loading/loading_overlay.dart';
import 'package:captain_iraq/shared/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../data/model/get_trips_model.dart';
import '../../logic/get_trips/get_trips_state.dart';
import '../../shared/theme/colors.dart';
import '../../shared/widgets/titled_container.dart';

class TripListView extends StatelessWidget {
  const TripListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitledContainer(
          title: "الرحلات",
        ),
        BlocBuilder<GetTripsBloc, GetTripsState>(
          builder: (context, state) {
            final tripBloc = GetTripsBloc.of(context);
            final tripList = state
                .whenOrNull(
                  success: (model) => model.innerData,
                )
                ?.toList();
            return Expanded(
              child: KRequestOverlay(
                isLoading: state is GetTripsStateLoading,
                loadingWidget: const ShimmerList(),
                child: Container(
                  color: KColors.backgroundD,
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  child: ListView.separated(
                    itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          tripBloc.selectTrip((tripList ?? [])[index]);
                          NavHelper.of(context).navigateTripInfo;
                        },
                        child: TripItem(
                          data: (tripList ?? [])[index],
                        )),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                    itemCount: tripList?.length ?? 0,
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}

class TripItem extends StatelessWidget {
  const TripItem({super.key, required this.data});

  final InnerTripsData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 11),
      decoration: KHelper.of(context).titledContainer.copyWith(
          border: Border.all(color: KColors.mainColor.withOpacity(.54))),
      child: Column(
        children: [
          10.h,
          Row(
            children: [
              const FluxImage(imageUrl: "assets/images/from-to.svg"),
              5.w,
              Text(
                data.name ?? '',
                style: KTextStyle.of(context)
                    .ten
                    .copyWith(color: KColors.blackColor),
              ),
            ],
          ),
          15.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const FluxImage(imageUrl: "assets/images/from-to.svg"),
                  5.w,
                  Text(
                    data.date ?? '',
                    style: KTextStyle.of(context)
                        .ten
                        .copyWith(color: KColors.blackColor),
                  ),
                ],
              ),
              Row(
                children: [
                  const FluxImage(imageUrl: "assets/images/from-to.svg"),
                  5.w,
                  Text(
                    data.time ?? '',
                    style: KTextStyle.of(context)
                        .ten
                        .copyWith(color: KColors.blackColor),
                  ),
                  40.w,
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
