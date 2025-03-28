import 'package:dochome/modules/baby-register/model/baby_register_model.dart';
import 'package:dochome/modules/baby-register/view/baby_register_screen.dart';
import 'package:flutter/material.dart';

mixin BabyRegisterController on State<BabyRegistrationScreen> {
  final TextEditingController nameController = TextEditingController();
  DateTime? dob;
  String? gender;
  BabyRegisterModel? registeredBaby;

  Future<void> selectDate(BuildContext context) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null) {
      setState(() {
        dob = pickedDate;
      });
    }
  }

  void registerBaby() {
    if (nameController.text.isNotEmpty && dob != null && gender != null) {
      setState(() {
        registeredBaby = BabyRegisterModel(
          name: nameController.text,
          dob: dob!,
          gender: gender!,
        );
      });
    }
  }
}
