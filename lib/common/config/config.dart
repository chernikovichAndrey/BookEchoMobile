import 'package:book_echo/common/config/app_flavors.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static String get baseUrl {
    if (AppFlavors.isDevFlavor) {
      return dotenv.env['SERVER_URL_DEV'] ?? '';
    }
    return dotenv.env['SERVER_URL_PROD'] ?? '';
  }
}
