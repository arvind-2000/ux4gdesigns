// 📦 Package imports:
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ux4gdesigns/app/pages/landingpages/heropages.dart';
import 'package:ux4gdesigns/app/pages/shellwrapper.dart';
import 'package:ux4gdesigns/app/pages/signuppage/signup.dart';

abstract class Approutes {
  //--------------Navigator Keys--------------//
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _emailShellNavigatorKey = GlobalKey<NavigatorState>();
  //--------------Navigator Keys--------------//

  static const _initialPath = '/';
  static final routerConfig = GoRouter(
    navigatorKey: GlobalKey<NavigatorState>(),
    initialLocation: _initialPath,
    // refreshListenable: AuthNotifier.instance,
    redirect: (context, state) {
      return state.uri.path;
    },
    routes: [
      // Landing Route Handler
      GoRoute(
        path: _initialPath,
        redirect: (context, state) {
          return '/home';
        },
      ),

      // Global Shell Route
      ShellRoute(
        navigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state, child) {
          return NoTransitionPage(child: ShellWrapper(child: child));
        },
        routes: [
          // Dashboard Routes
          GoRoute(
            path: '/',
            redirect: (context, state) async {
              return 'home';
            },
          ),
          GoRoute(
            path: '/home',
            pageBuilder: (context, state) {
              return NoTransitionPage(child: HeroPage());
            },
          ),
          GoRoute(
            path: '/signup',
            pageBuilder: (context, state) {
              return NoTransitionPage(child: Signup());
            },
          ),
        ],
      ),
    ],

    errorPageBuilder: (context, state) => const NoTransitionPage(child: HeroPage()),
  );
}
