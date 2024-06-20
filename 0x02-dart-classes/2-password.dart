class Password {
  String? password;

  bool isValid() {
    if (password == null) return false;
    if (password!.length < 8 || password!.length > 16) return false;
    if (!RegExp(r'[A-Z]').hasMatch(password!)) return false;
    if (!RegExp(r'[a-z]').hasMatch(password!)) return false;
    if (!RegExp(r'[0-9]').hasMatch(password!)) return false;
    return true;
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
