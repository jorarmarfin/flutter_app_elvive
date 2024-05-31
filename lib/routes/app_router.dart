import 'package:go_router/go_router.dart';

import '../screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: <RouteBase>[
  GoRoute(
    path: '/',
    name: IntroScreen.routeName,
    builder: (context, state) => const IntroScreen(),
  ),
  GoRoute(
      path: '/home',
      name: HomeScreen.routeName,
      builder: (context, state) => const ArtistScreen()
  ),
  GoRoute(
      path: '/artist',
      name: ArtistScreen.routeName,
      builder: (context, state) => const ArtistScreen()
  ),

]);

