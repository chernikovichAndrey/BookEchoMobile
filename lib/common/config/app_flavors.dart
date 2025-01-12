class AppFlavors {
  static const String? _appFlavor = String.fromEnvironment('FLUTTER_APP_FLAVOR') != ''
      ? String.fromEnvironment('FLUTTER_APP_FLAVOR')
      : null;

  static const bool isDevFlavor = _appFlavor == 'dev';
}