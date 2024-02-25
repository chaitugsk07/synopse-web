import 'package:go_router/go_router.dart';
import 'package:landing/features/home.dart';
import 'package:landing/features/tos.dart';

const home = '/';
const tos = '/tos';

final GoRouter router = GoRouter(
  routes: [
    splashRoute(),
    tosRoute(),
  ],
);

GoRoute splashRoute() {
  return GoRoute(
    path: home,
    name: 'home',
    builder: (context, state) => const Home(),
  );
}

GoRoute tosRoute() {
  return GoRoute(
    path: tos,
    name: 'tos',
    builder: (context, state) => const Tos(),
  );
}
