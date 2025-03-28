/// [passwordValidator] a password based on the following criteria:
/// - Must not be null or empty.
/// - Must be at least 8 characters long.
/// - Must contain at least one uppercase letter.
/// - Must contain at least one digit.
/// - Must contain at least one special character (!@#$%^&*(),.?":{}|<>).
///
/// Returns an error message if the password is invalid,
/// otherwise returns `null`.
String? passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter a password';
  }
  if (value.length < 8) {
    return 'Password must be at least 8 characters long';
  }
  if (!RegExp('[A-Z]').hasMatch(value)) {
    return 'Password must contain at least one uppercase letter';
  }
  if (!RegExp('[0-9]').hasMatch(value)) {
    return 'Password must contain at least one digit';
  }
  if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
    return 'Password must contain at least one special character';
  }
  return null;
}

/// [emailValidator] an email address based on the following criteria:
/// - Must not be null or empty.
/// - Must follow a valid email format (e.g., `example@domain.com`).
///
/// Returns an error message if the email is invalid, otherwise returns `null`.
String? emailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter an email address';
  } else if (!RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  ).hasMatch(value)) {
    return 'enter valid email !';
  }
  return null;
}
