import 'screen_b.dart';
import 'package:flutter/material.dart';
import 'package:tab_navigation/home.dart';
import 'package:go_router/go_router.dart';
import 'scaffold_with_nested_navigation.dart';
import 'package:tab_navigation/root_screen.dart';
import 'package:tab_navigation/login_screen.dart';
import 'package:tab_navigation/screen_c_internal.dart';
import 'package:tab_navigation/screen_a_internal.dart';
import 'package:tab_navigation/screen_b_internal.dart';

class TabRouter {
  // private navigators
  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'shellA');
  final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');

  GoRouter get goRouter => _goRouter;

  final _goRouter = GoRouter(
    initialLocation: '/',
    // * Passing a navigatorKey causes an issue on hot reload:
    // * https://github.com/flutter/flutter/issues/113757#issuecomment-1518421380
    // * However it's still necessary otherwise the navigator pops back to
    // * root on hot reload
    navigatorKey: GlobalKey<NavigatorState>(),
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          var token = state.uri.queryParameters['token'] ?? '';
          if (token.isNotEmpty) {
            // If a token is present, redirect to the home screen
            return Home();
          } else {
            // Otherwise, redirect to the login screen
            return Home();
          }
        },
      ),
      GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
      // Stateful navigation based on:
      // https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'shellA'),
            routes: [
              GoRoute(
                path: '/a',
                pageBuilder: (context, state) {
                  return const NoTransitionPage(
                    child: RootScreen(path: '/a/internal', label: 'A'),
                  );
                },
                routes: [
                  GoRoute(
                    path: 'internal',
                    builder: (context, state) => const ScreenAInternal(),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'shellB'),
            routes: [
              // Shopping Cart
              GoRoute(
                path: '/b',
                pageBuilder:
                    (context, state) => const NoTransitionPage(
                      child: RootScreen(path: '/b/internal', label: 'B'),
                    ),
                routes: [
                  GoRoute(
                    path: 'internal',
                    builder: (context, state) => const ScreenBinternal(),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'shellC'),
            routes: [
              // Shopping Cart
              GoRoute(
                path: '/c',
                pageBuilder:
                    (context, state) => const NoTransitionPage(
                      child: RootScreen(path: '/c/internal', label: 'C'),
                    ),
                routes: [
                  GoRoute(
                    path: 'internal',
                    builder: (context, state) => const ScreenCinternal(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
