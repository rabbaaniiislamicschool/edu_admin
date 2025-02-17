class CustomDateUtils {
  static const List<String> _monthNames = [
    'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember'
  ];

  /// Format DateTime to a string with dynamic options
  static String formatDate(
    DateTime date, {
    bool showMonthOnly = false,
    bool includeDay = true,
    bool includeYear = true,
  }) {
    String month = _monthNames[date.month - 1];
    String formattedDate = '';

    if (showMonthOnly) {
      return month;
    }

    if (includeDay) {
      formattedDate += '${date.day} ';
    }

    formattedDate += month;

    if (includeYear) {
      formattedDate += ' ${date.year}';
    }

    return formattedDate;
  }

  /// Parse date string (e.g., "2024-12-25") to DateTime
  static DateTime parseDateFromString(String dateString) {
    List<String> parts = dateString.split('-');
    int year = int.parse(parts[0]);
    int month = int.parse(parts[1]);
    int day = int.parse(parts[2]);

    return DateTime(year, month, day);
  }

  /// Format string date to Indonesian format
  static String? formatStringDate(
    String? dateString, {
    bool showMonthOnly = false,
    bool includeDay = true,
    bool includeYear = true,
  }) {
    if(dateString == null) return null;

    DateTime date = parseDateFromString(dateString);
    return formatDate(
      date,
      showMonthOnly: showMonthOnly,
      includeDay: includeDay,
      includeYear: includeYear,
    );
  }

  /// Parse timestamp to DateTime
  static DateTime parseDateFromTimestamp(int timestamp) {
    return DateTime.fromMillisecondsSinceEpoch(timestamp);
  }

  /// Format timestamp to Indonesian format
  static String formatTimestamp(
    int timestamp, {
    bool showMonthOnly = false,
    bool includeDay = true,
    bool includeYear = true,
  }) {
    DateTime date = parseDateFromTimestamp(timestamp);
    return formatDate(
      date,
      showMonthOnly: showMonthOnly,
      includeDay: includeDay,
      includeYear: includeYear,
    );
  }

  /// Parse ISO 8601 date string (e.g., "2024-12-17T14:26:54.266872+00:00") to DateTime
  static DateTime parseIsoDate(String isoDateString) {
    return DateTime.parse(isoDateString);
  }

  /// Format ISO 8601 date string to Indonesian format
  static String? formatIsoDate(
    String? isoDateString, {
    bool showMonthOnly = false,
    bool includeDay = true,
    bool includeYear = true,
  }) {
    if(isoDateString  == null) return null;
    DateTime date = parseIsoDate(isoDateString);
    return formatDate(
      date,
      showMonthOnly: showMonthOnly,
      includeDay: includeDay,
      includeYear: includeYear,
    );
  }
}
