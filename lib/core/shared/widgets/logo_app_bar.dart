import '../../shared/widgets/settings_button.dart';
import 'package:flutter/material.dart';

class LogoAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool showExtras;

  const LogoAppBarWidget({super.key, required this.showExtras});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 200.0,
      centerTitle: true,
      bottom: const PreferredSize(
          preferredSize: Size.fromHeight(8.0), child: SizedBox(height: 8.0)),
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      title: LayoutBuilder(
        builder: (context, constraints) => Image.asset(
          'lib/core/shared/assets/coteria_outline.png',
          height: kToolbarHeight * 0.8,
        ),
      ),
      leading: showExtras ? settingsButton(context: context) : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

