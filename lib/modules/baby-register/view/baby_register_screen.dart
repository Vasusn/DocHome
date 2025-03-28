import 'package:dochome/modules/baby-register/controller/baby_register_controller.dart';
import 'package:dochome/modules/slot-booking/view/slot_booking_screen.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/values/strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BabyRegistrationScreen extends StatefulWidget {
  const BabyRegistrationScreen({super.key});
  @override
  _BabyRegistrationScreenState createState() => _BabyRegistrationScreenState();
}

class _BabyRegistrationScreenState extends State<BabyRegistrationScreen>
    with BabyRegisterController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.registerBaby)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: AppStrings.babyName),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  dob == null
                      ? AppStrings.selectDOB
                      : DateFormat('yyyy-MM-dd').format(dob!),
                ),
                IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () => selectDate(context),
                ),
              ],
            ),
            DropdownButton<String>(
              hint: const Text(AppStrings.selectGender),
              value: gender,
              onChanged: (String? newValue) {
                setState(() {
                  gender = newValue;
                });
              },
              items:
                  [
                    AppStrings.male,
                    AppStrings.female,
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
            ),

            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: registerBaby,
                child: Text(
                  AppStrings.registerBaby,
                  style: context.theme.labelMedium,
                ),
              ),
            ),
            if (registeredBaby != null) ...[
              const Divider(),
              const Text('Profile'),
              Text('Name: ${registeredBaby!.name}'),
              Text('Age: ${registeredBaby!.age} years'),
              Text('Gender: ${registeredBaby!.gender}'),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) =>
                                SlotBookingScreen(baby: registeredBaby!),
                      ),
                    );
                  },
                  child: Text(
                    AppStrings.bookVaccinationSlot,
                    style: context.theme.labelMedium,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
