class StringUtils {
  static String getInitials(String? name) {
    if (name == null || name.trim().isEmpty) return '-'; // Handle null and empty cases

    final words = name
        .trim()
        .split(RegExp(r'\s+')) // Split by spaces or multiple spaces
        .where((word) => word.isNotEmpty) // Exclude empty words
        .toList();

    if (words.isEmpty) return '-'; // Handle names with only spaces

    // Combine the first letter of the first two words (or just one if that's all there is)
    return words.length > 1
        ? '${words[0][0].toUpperCase()}${words[1][0].toUpperCase()}'
        : words[0][0].toUpperCase();
  }

  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email tidak boleh kosong';
    }
    // Pola regex untuk email
    String pattern =
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Format email tidak valid';
    }
    return null; // Valid
  }

  static String? phoneValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nomor telepon tidak boleh kosong';
    }
    // Pola regex: +62xxx atau 08xxx dengan minimal 9 digit setelah kode
    String pattern = r'^(?:\+62|62|0)[2-9][0-9]{8,}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Nomor telepon Indonesia tidak valid';
    }
    return null; // Valid
  }

}