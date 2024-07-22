import '../../utils.dart';
import '../../../features/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

Widget settingsButton({required BuildContext context}) {
  return Transform.translate(
    offset: const Offset(5, 8),
    child: IconButton(
      icon: const Icon(
        Icons.settings,
        size: iconSize * 1.25,
      ),
      color: Colors.white,
      onPressed: () {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.leftToRight,
                settings: const RouteSettings(name: '/settings'),
                child:
                    const Material(elevation: 8.0, child: SettingsScreen())));
      },
    ),
  );
}
