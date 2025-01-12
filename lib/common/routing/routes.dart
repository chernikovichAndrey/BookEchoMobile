import 'package:book_echo/common/routing/route_type.dart';

enum Routes {
  splash(path: 'splash', type: RouteType.cupertino);

  final String path;
  final RouteType type;

  const Routes({required this.path, required this.type});
}