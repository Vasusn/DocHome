import 'package:dochome/values/strings/icon_string.dart' show AppIconStrings;
import 'package:dochome/values/strings/image_string.dart';

class HomeScreenLists {
  static const List<String> categoryIcons = <String>[
    AppIconStrings.categoryDentistry,
    AppIconStrings.categoryCardiology,
    AppIconStrings.categoryPulmonology,
    AppIconStrings.categoryGeneral,
    AppIconStrings.categoryNeurology,
    AppIconStrings.categoryGastroenterology,
    AppIconStrings.categoryLaboratory,
    AppIconStrings.categoryVaccination,
  ];
  static const categoryNames = <String>[
    'Dentistry',
    'Cardiology',
    'Pulmonology',
    'General',
    'Neurology',
    'Gastroenterology',
    'Laboratory',
    'Vaccination',
  ];
  static const clinicImages = <String>[
    AppImagesStrings.homeNearMeClinic1,
    AppImagesStrings.homeNearMeClinic2,
  ];
  static const clinicNames = <String>[
    'Sunrise Health Clinic',
    'Golden Cardiology Clinic',
  ];
}
