String? emailValidator(String email) {
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
  if (!emailValid) {
    return 'Please enter a valid email!';
  }
  return null;
}

String? passwordValidator(String password) {
  String pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  bool valid = RegExp(pattern).hasMatch(password);
  if (!valid) {
    return 'Enter a valid password.';
  }
  return null;
}
