class StringUtils {
  static String getInitials(String? name) {
    if (name == null || name.trim().isEmpty) {
      return '-'; // Handle null and empty cases
    }

    final words =
        name
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

  static String? emailValidator(String? value, {bool isRequired = true}) {
    if (value == null || value.isEmpty) {
      return isRequired ? 'Email tidak boleh kosong' : null;
    }
    // Pola regex untuk email
    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
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

  static String? coordinateValidator(String? value) {
    if (value == null || value.isEmpty) {
      // return 'Koordinat tidak boleh kosong' : null;
      return null;
    }

    // Pisahkan latitude dan longitude berdasarkan koma
    final parts = value.split(',');
    if (parts.length != 2) {
      return 'Format koordinat tidak valid. Gunakan format: latitude,longitude';
    }

    // Validasi latitude
    final latitude = parts[0].trim();
    if (latitude.isEmpty) {
      return 'Latitude tidak boleh kosong';
    }
    final latitudeValue = double.tryParse(latitude);
    if (latitudeValue == null) {
      return 'Latitude harus berupa angka';
    }
    if (latitudeValue < -90 || latitudeValue > 90) {
      return 'Latitude harus berada antara -90 dan 90';
    }

    // Validasi longitude
    final longitude = parts[1].trim();
    if (longitude.isEmpty) {
      return 'Longitude tidak boleh kosong';
    }
    final longitudeValue = double.tryParse(longitude);
    if (longitudeValue == null) {
      return 'Longitude harus berupa angka';
    }
    if (longitudeValue < -180 || longitudeValue > 180) {
      return 'Longitude harus berada antara -180 dan 180';
    }

    // Jika semua validasi berhasil
    return null;
  }
}
