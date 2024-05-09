import 'package:captain_iraq/di.dart';
import 'package:captain_iraq/logic/get_trip_dates/get_trip_dates_bloc.dart';
import 'package:captain_iraq/logic/get_trip_dates/get_trip_dates_bloc.dart';
import 'package:captain_iraq/shared/route/nav_helper.dart';
import 'package:captain_iraq/shared/widgets/loading/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../logic/get_trip_dates/get_trip_dates_state.dart';
import '../../shared/theme/colors.dart';
import '../../shared/widgets/titled_container.dart';

class ReservationHistory extends StatelessWidget {
  const ReservationHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitledContainer(
          title: "سجل الحجوزات",
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              debugPrint("ReservationHistory");
            },
            child: Container(
              color: KColors.backgroundD,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: const BookingHistoryDatePicker(),
            ),
          ),
        )
      ],
    );
  }
}

class BookingHistoryDatePicker extends StatefulWidget {
  const BookingHistoryDatePicker({Key? key}) : super(key: key);

  @override
  State<BookingHistoryDatePicker> createState() =>
      _BookingHistoryDatePickerState();
}

class _BookingHistoryDatePickerState extends State<BookingHistoryDatePicker> {
  late List<DateTime> _selectableDates;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetTripDatesBloc, GetTripDatesState>(
      builder: (context, state) {
        final selectableDates = GetTripDatesBloc.of(context).dates;
        return KRequestOverlay(
          isLoading: state is GetTripDatesStateLoading,
          child: SfDateRangePicker(
            showActionButtons: true,
            backgroundColor: KColors.whiteColor,
            showNavigationArrow: true,
            enablePastDates: false,
            allowViewNavigation: false,
            selectableDayPredicate: (d) => true,
            onSelectionChanged: (dateRangePickerSelectionChangedArgs) {
              debugPrint(dateRangePickerSelectionChangedArgs.value.toString());
              // if (selectableDates
              //     .contains(dateRangePickerSelectionChangedArgs.value)) {
              //   NavHelper.of(context).navigateTripInfo;
              // }
            },
            toggleDaySelection: false,
            monthViewSettings: DateRangePickerMonthViewSettings(
              blackoutDates: selectableDates
                  .where((element) =>
                      element.difference(DateTime.now()).inHours > 12)
                  .toList(),
              specialDates: selectableDates
                  .where((element) =>
                      element.difference(DateTime.now()).inHours < 12&&
                      element.difference(DateTime.now()).inMinutes > 20)
                  .toList(),
            ),
            monthCellStyle: const DateRangePickerMonthCellStyle(
              blackoutDateTextStyle: TextStyle(
                color: Colors.white,
              ),
              blackoutDatesDecoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange,
              ),
              specialDatesTextStyle: TextStyle(color: Colors.white),
              specialDatesDecoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
            ),
          ),
        );
      },
    );
  }
}
