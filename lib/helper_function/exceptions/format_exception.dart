class CustomFormatException implements Exception {
  final String message;

  const CustomFormatException([this.message = 'An unexpected format error occured. Please check your input.']);

  factory CustomFormatException.fromMessage(String message) {
    return CustomFormatException(message);
  }

  String get formattedMessage => message;

  factory CustomFormatException.fromCode(String code) {
    switch (code) {
      case 'invalid-email-format':
        return const CustomFormatException('The email address format is invalid. Please enter a valid email.');
      case 'invalid-phone-number-format':
        return const CustomFormatException('The provided phone number format is invalid. Please enter a valid phone number.');
      case 'invalid-date-format':
        return const CustomFormatException('The date format is invalid. Please enter a valid date.');
      case 'invalid-url-format':
        return const CustomFormatException('The URL format is invalid. Please enter a valid URL.');
      case 'invalid-credit-card-format':
        return const CustomFormatException('The credit card format is invalid. Please enter a valid credit card number');
      case 'invalid-numeric-format':
        return const CustomFormatException('The input should be a valid numeric format');
      default:
      return const CustomFormatException('An unexpected format error occured. Please check your input.');
    }
  }

}