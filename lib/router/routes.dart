import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../pages/pages.dart';

class MyRouter {

  late final router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: 'root',
        path: '/',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const HomePage()
        )
        // redirect: (context, state) => context.namedLocation("home"),
      ),
      GoRoute(
        path: "/home",
        name: "home",
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const HomePage()
        )
      ),
      GoRoute(
          path: "/messages",
          name: "messages",
          pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const MessagePage()
          )
      )
    ]
  );
}