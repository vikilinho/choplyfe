mixin InputValidationMixin {
  // bool isPasswordValid(String password) => password.length == 6;

  bool isEmailValid(String email) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern.toString());
    return regex.hasMatch(email);
  }

  bool isPasswordValid(String password) {
    // Check if the password contains at least one uppercase, one lowercase, one alphanumeric, and one symbol character
    bool hasUppercase = false;
    bool hasLowercase = false;
    bool hasNumeric = false;
    bool hasSymbol = false;

    for (int i = 0; i < password.length; i++) {
      String char = password[i];

      if (char.toUpperCase() != char.toLowerCase()) {
        if (char == char.toUpperCase()) {
          hasUppercase = true;
        } else {
          hasLowercase = true;
        }
      } else if (char.contains(new RegExp(r'[0-9]'))) {
        hasNumeric = true;
      } else if (char.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
        hasSymbol = true;
      }
    }

    return hasUppercase && hasLowercase && hasNumeric && hasSymbol;
  }
}
