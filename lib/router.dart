import 'package:flutter_navigation_signin/pages/authed_page.dart';
import 'package:flutter_navigation_signin/pages/signin_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SignIn(),
    ),
    GoRoute(
      path: '/authed',
      builder: (context, state) => Congrats(
        user: state.extra as String,
      ),
    ),
  ],
);
