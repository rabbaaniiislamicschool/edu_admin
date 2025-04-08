extension PhoneNumberExtensions on String {
  /// Mengubah dari 62xxxx ke 08xxxx
  String toLocalFormat() {
    if (startsWith('62')) {
      return '0${substring(2)}';
    }
    return this;
  }

  /// Mengubah dari 08xxxx ke 62xxxx
  String toInternationalFormat() {
    if (startsWith('0')) {
      return '62${substring(1)}';
    }
    return this;
  }
}
