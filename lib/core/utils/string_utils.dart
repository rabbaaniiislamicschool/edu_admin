class StringUtils {
  static String getInitials(String name) {
    if (name.isEmpty) return '?'; // Default fallback for empty names

    final words = name
        .trim()
        .split(RegExp(r'\s+')) // Split by spaces or multiple spaces
        .where((word) => word.isNotEmpty) // Exclude empty words
        .toList();

    if (words.isEmpty) return '?'; // Handle names with only spaces

    // Combine the first letter of the first two words (or just one if that's all there is)
    return words.length > 1
        ? '${words[0][0].toUpperCase()}${words[1][0].toUpperCase()}'
        : words[0][0].toUpperCase();
  }
}