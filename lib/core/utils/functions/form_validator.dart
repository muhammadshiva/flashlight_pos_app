class FormValidator {
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return "Name cannot be blank";
    }
    if (value.length < 3) {
      return "Name must be at least 3 characters";
    }
    if (!RegExp(r"^[a-zA-Z\s]+$").hasMatch(value)) {
      return "Name only contains alphabetic and space";
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone number cannot be blank";
    }
    if (!RegExp(r"^(0|62)[0-9]{9,12}$").hasMatch(value)) {
      return "Phone numbers must begin with 0 or 62 and consist of 10-13 digits";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password cannot be blank";
    }
    if (value.length < 6) {
      return "Password at least 6 characters";
    }
    return null;
  }

  static String? validateConfirmPassword(String? value, String? password) {
    if (value == null || value.isEmpty) {
      return "Password confirmation cannot be blank";
    }
    if (value != password) {
      return "Password confirmation not match with password";
    }
    return null;
  }
}
