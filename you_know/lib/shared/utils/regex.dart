class Regex {
  static bool isEmail(String email) {
    RegExp regExp = RegExp(r'\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*');
    return regExp.hasMatch(email);
  }

  static bool isPassword(String password) {
    // Điều kiện mật khẩu của bạn ở đây, ví dụ:
    // Độ dài ít nhất 8 ký tự, chứa ít nhất một chữ cái viết hoa và một chữ số.
    RegExp regExp = RegExp(r'^(?=.*?[A-Z])(?=.*?[0-9]).{8,}$');
    return regExp.hasMatch(password);
  }

  static bool isPasswordAtLeast8Characters(String password) {
    return password.length >= 8;
  }

  static bool isUsername(String username) {
    // Điều kiện tên người dùng của bạn ở đây, ví dụ:
    // Độ dài ít nhất 6 ký tự và chỉ chứa chữ cái, số và dấu gạch dưới.
    RegExp regExp = RegExp(r'^[a-zA-Z0-9_]{6,}$');
    return regExp.hasMatch(username);
  }
}
