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
      builder: (context, state) => const HomeScreen()
  ),
  GoRoute(
      path: '/artist/:id',
      name: ArtistScreen.routeName,
      builder: (context, state) {
        final id = state.pathParameters['id'];
        return ArtistScreen(id: int.parse(id.toString()));
      }
  ),
  GoRoute(
      path: '/event/:id',
      name: EventScreen.routeName,
      builder: (context, state) {
        final id = state.pathParameters['id'];
        return EventScreen(id: int.parse(id.toString()));
      }
  ),
  GoRoute(
      path: '/pastoral',
      name: PastoralScreen.routeName,
      builder: (context, state) => const PastoralScreen()
  ),
  GoRoute(
      path: '/god',
      name: GodScreen.routeName,
      builder: (context, state) => const GodScreen()
  ),


]);

