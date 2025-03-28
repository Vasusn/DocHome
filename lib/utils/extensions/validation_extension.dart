extension StringValidation on String {
  /// Validates if the string is a properly formatted email.
  bool isValidEmail() {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\$',
    );
    return emailRegex.hasMatch(this);
  }

  /// Validates if the string meets password requirements.
  /// Example: At least 8 characters, one uppercase, one lowercase,
  /// one digit, one special character.
  bool isValidPassword() {
    final passwordRegex = RegExp(
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}\$',
    );
    return passwordRegex.hasMatch(this);
  }

  /// Validates if the string is a valid username.
  /// Example: Only alphanumeric characters and underscores,
  /// 3-16 characters long.
  bool isValidUsername() {
    final usernameRegex = RegExp(r'^[a-zA-Z0-9_]{3,16}\$');
    return usernameRegex.hasMatch(this);
  }
}
