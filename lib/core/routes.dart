import 'package:flutter/material.dart';
import 'package:flutter_app/screens/search_screen.dart';
import 'package:go_router/go_router.dart';
import '../screens/library_screen.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/notification_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/register_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) =>
          NoTransitionPage(child: const LoadingScreen()),
    ),
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) =>
          NoTransitionPage(child: const HomeScreen()),
    ),
    GoRoute(
      path: '/search',
      pageBuilder: (context, state) =>
          NoTransitionPage(child: const SearchScreen()),
    ),
    GoRoute(
      path: '/profile',
      pageBuilder: (context, state) =>
          NoTransitionPage(child: const ProfileScreen()),
    ),
    GoRoute(
      path: '/library',
      pageBuilder: (context, state) =>
          NoTransitionPage(child: const LibraryScreen()),
    ),
    GoRoute(
      path: '/notification',
      pageBuilder: (context, state) =>
          NoTransitionPage(child: const NotificationScreen()),
    ),
    GoRoute(
      path: '/login',
      pageBuilder: (context, state) =>
          NoTransitionPage(child: const LoginScreen()),
    ),
    GoRoute(
      path: '/register',
      pageBuilder: (context, state) =>
          NoTransitionPage(child: const RegisterScreen()),
    ),
  ],
);
