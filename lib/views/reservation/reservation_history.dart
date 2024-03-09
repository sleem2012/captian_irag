import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../shared/theme/colors.dart';
import '../../shared/widgets/titled_container.dart';

class ReservationHistory extends StatelessWidget {
  const ReservationHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitledContainer(
          title: "سجل الحجوزات",
        ),
        Expanded(
            child: Container(
          color: KColors.backgroundD,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: const BookingHistoryDatePicker(),
        ))
      ],
    );
  }
}

class BookingHistoryDatePicker extends StatefulWidget {
  const BookingHistoryDatePicker({super.key});

  @override
  State<BookingHistoryDatePicker> createState() =>
      _BookingHistoryDatePickerState();
}

class _BookingHistoryDatePickerState extends State<BookingHistoryDatePicker> {
  late List<DateTime> _selectableDates;

  @override
  void initState() {
    _selectableDates = <DateTime>[
      DateTime(2024, 3, 8),
      DateTime(2024, 3, 9),
      DateTime(2024, 3, 10),
      DateTime(2024, 3, 15),
      DateTime(2024, 3, 18),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfDateRangePicker(
      backgroundColor: KColors.whiteColor,
      showNavigationArrow: true,
      viewSpacing: 10,
      enablePastDates: false,
      allowViewNavigation: false,
      selectableDayPredicate: (d) => false,
      monthViewSettings: DateRangePickerMonthViewSettings(
        blackoutDates: _selectableDates
            .where((element) => element.difference(DateTime.now()).inHours > 48)
            .toList(),
        specialDates: _selectableDates
            .where((element) => element.difference(DateTime.now()).inHours < 48)
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
    );
  }
}
