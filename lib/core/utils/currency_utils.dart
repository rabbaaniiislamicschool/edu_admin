class CurrencyUtils {
  static String format(int amount) {
    final buffer = StringBuffer();
    final amountString = amount.toString();
    int counter = 0;

    for (int i = amountString.length - 1; i >= 0; i--) {
      buffer.write(amountString[i]);
      counter++;
      if (counter == 3 && i != 0) {
        buffer.write('.'); // Gunakan titik untuk format Indonesia
        counter = 0;
      }
    }

    // Balikkan string dan tambahkan simbol mata uang
    return 'Rp${buffer.toString().split('').reversed.join()}';
  }
  static String? tryFormat(int? amount) {
    if(amount == null) return null;
    return format(amount);
  }
}