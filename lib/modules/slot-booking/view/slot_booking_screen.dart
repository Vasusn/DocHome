import 'package:dochome/modules/baby-register/model/baby_register_model.dart';
import 'package:dochome/modules/slot-booking/controller/slot_booking_controller.dart';
import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/values/strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SlotBookingScreen extends StatefulWidget {
  const SlotBookingScreen({required this.baby, super.key});
  final BabyRegisterModel baby;

  @override
  _SlotBookingScreenState createState() => _SlotBookingScreenState();
}

class _SlotBookingScreenState extends State<SlotBookingScreen>
    with SlotBookingController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.bookSlot)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${AppStrings.name}: ${widget.baby.name}'),
            24.height,
            TextButton(
              onPressed: pickDate,
              child: Text('Select Date', style: context.theme.displayMedium),
            ),
            24.height,

            Text(
              selectedDate == null
                  ? AppStrings.noDateChosen
                  : DateFormat('yyyy-MM-dd').format(selectedDate!),
            ),
            24.height,

            TextButton(
              onPressed: pickTime,
              child: Text(
                AppStrings.selectTime,
                style: context.theme.displayMedium,
              ),
            ),
            24.height,

            Text(
              selectedTime == null
                  ? AppStrings.noTimeChosen
                  : selectedTime!.format(context),
            ),
            24.height,

            DropdownButton<String>(
              hint: const Text(AppStrings.selectVaccine),
              value: selectedVaccine,
              onChanged: (value) => setState(() => selectedVaccine = value),
              items:
                  getAvailableVaccines()
                      .map(
                        (vaccine) => DropdownMenuItem(
                          value: vaccine,
                          child: Text(vaccine),
                        ),
                      )
                      .toList(),
            ),
            24.height,

            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: bookSlot,

                child: Text(
                  AppStrings.bookSlot,
                  style: context.theme.labelMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
