import 'package:dochome/modules/baby-register/controller/baby_register_controller.dart';
import 'package:dochome/modules/slot-booking/view/slot_booking_screen.dart';
import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/utils/widgets/dh_text_form_field.dart';
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
      appBar: AppBar(
        title: Text(AppStrings.registerBaby, style: context.theme.displayLarge),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DHTextFormField(
                hintText: AppStrings.babyName,
                controller: nameController,
              ),
              24.height,
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
              24.height,
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
              24.height,
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
                24.height,
                const Divider(),
                24.height,
                Center(
                  child: Text('Profile', style: context.theme.displayLarge),
                ),
                24.height,

                Text(
                  'Name: ${registeredBaby!.name}',
                  style: context.theme.displayMedium,
                ),
                24.height,

                Text(
                  'Age: ${registeredBaby!.age} years',
                  style: context.theme.displayMedium,
                ),
                24.height,

                Text(
                  'Gender: ${registeredBaby!.gender}',
                  style: context.theme.displayMedium,
                ),
                24.height,
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
      ),
    );
  }
}
