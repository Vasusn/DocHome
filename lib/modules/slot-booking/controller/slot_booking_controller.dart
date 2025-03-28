import 'package:dochome/modules/slot-booking/view/slot_booking_screen.dart';
import 'package:dochome/values/strings/app_strings.dart';
import 'package:flutter/material.dart';

mixin SlotBookingController on State<SlotBookingScreen> {
  final Map<int, List<String>> vaccinesByAge = {
    6: ['Hepatitis B'],
    10: ['Rotarix'],
    14: ['DTP'],
    52: ['MMR'],
    144: ['HPV'],
  };

  List<String> getAvailableVaccines() {
    final vaccines = <String>[];
    vaccinesByAge.forEach((weeks, availableVaccines) {
      if (widget.baby.ageInWeeks >= weeks) {
        vaccines.addAll(availableVaccines);
      }
    });
    if (vaccines.isEmpty) {
      vaccines.add(AppStrings.noVaccinesAvailable);
    }
    return vaccines;
  }

  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  String? selectedVaccine;

  Future<void> pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> pickTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  void bookSlot() {
    if (selectedDate != null &&
        selectedTime != null &&
        selectedVaccine != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text(AppStrings.vaccineBookedSuccessfully)),
      );
    }
  }
}
