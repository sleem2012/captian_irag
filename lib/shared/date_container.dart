import 'package:captain_iraq/shared/theme/colors.dart';
import 'package:captain_iraq/shared/theme/helper.dart';
import 'package:captain_iraq/shared/theme/text_theme.dart';
import 'package:captain_iraq/shared/widgets/date_picker.dart';
import 'package:captain_iraq/shared/widgets/drop_down.dart';
import 'package:flutter/material.dart';

class DateContainer extends StatefulWidget {
  const DateContainer({
    super.key,
    this.firstTextColor,
    this.secondTextColor,
    this.firstContainerColor,
    required this.title,
    required this.onPressed,
    this.dropDown = false,
  });

  final Color? firstTextColor, secondTextColor, firstContainerColor;
  final String title;
  final ValueChanged<String> onPressed;
  final bool dropDown;

  @override
  State<DateContainer> createState() => _DateContainerState();
}

String? selectedDate = KHelper.apiDateFormatter(DateTime.now());

class _DateContainerState extends State<DateContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final date = await SfDatePicker.showDateTimePickerHG(
          context,
          type: KDateTimePickerType.dateGregorian,
          start: DateTime.now(),
          initial: DateTime.now(),
          end: DateTime(2030),
        );
        if (date == null) return;
        dateController.text = date;
        setState(() {});
        selectedDate = date;
        widget.onPressed(date);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: KHelper.of(context).dateContainer,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  color: widget.firstContainerColor ?? KColors.mainColor,
                  child: Text(widget.title,
                      style: KTextStyle.of(context)
                          .ten
                          .copyWith(color: widget.firstTextColor)),
                ),
                widget.dropDown
                    ? SizedBox(
                        width: 90,
                        child: KDropdownBtn(
                            minHeight: 30,
                            btnDecoration: const BoxDecoration(
                              color: KColors.whiteColor,
                            ),
                            title: weekDays.firstOrNull??'',
                            onChanged: (p0) {},
                            items: weekDays
                                .map((e) => KHelper.of(context)
                                    .itemView(itemText: e, value: e))
                                .toList()),
                      )
                    : Container(
                        padding: const EdgeInsets.all(10),
                        color: KColors.whiteColor,
                        child: Text(selectedDate ?? '',
                            style: KTextStyle.of(context).ten.copyWith(
                                color: widget.secondTextColor ??
                                    KColors.mainColor)),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<String> weekDays = [
  'السبت',
  'الأحد',
  'الإثنين',
  'الثلاثاء',
  'الأربعاء',
  'الخميس',
  'الجمعة',
];
