import '../shared/widgets/scaffold_wrapper.dart';
import '../../features/discover/discover.dart';
import '../../features/error/error.dart';
import '../../features/home/home.dart';
import '../../features/inbox/inbox.dart';
import '../../features/profile/profile.dart';
import '../../features/search/search.dart';
import '../../features/login/login.dart';
import '../../features/settings/settings.dart';
import '../../features/signup/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Widget getDefaultRoutePage() {
  User? currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser == null) {
    return const LoginScreen();
  } else {
    return const HomePage();
  }
}

List<Widget> pages = [
  const HomePage(),
  const DiscoverPage(),
  const SearchPage(),
  const InboxPage(),
  const ProfilePage(),
];

final routes = {
  '/login': (context) => const LoginScreen(),
  '/sign-up': (context) => const SignUpScreen(),
  '/settings': (context) => const SettingsScreen(),
  '/error': (context) => const ErrorScreen(),
  '/home': (context) => ScaffoldWrapper(pages: pages, initialIndex: 0,),
  '/discover': (context) => ScaffoldWrapper(pages: pages, initialIndex: 1,),
  '/search': (context) => ScaffoldWrapper(pages: pages, initialIndex: 2,),
  '/inbox': (context) => ScaffoldWrapper(pages: pages, initialIndex: 3,),
  '/profile': (context) => ScaffoldWrapper(pages: pages, initialIndex: 4,),
};
