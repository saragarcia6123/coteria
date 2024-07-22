import '../../shared/widgets/bottom_nav.dart';
import '../../shared/widgets/logo_app_bar.dart';
import 'package:flutter/material.dart';

class ScaffoldWrapper extends StatefulWidget {
  
  const ScaffoldWrapper({
    super.key,
    required this.pages,
    required this.initialIndex,
  });

  final List<Widget> pages;
  final int initialIndex;

  @override
  State<ScaffoldWrapper> createState() => _ScaffoldWrapperState();
}

class _ScaffoldWrapperState extends State<ScaffoldWrapper> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  void _changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LogoAppBarWidget(showExtras: true),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onTap: (index) => {_changeIndex(index)}
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: widget.pages,
      ),
    );
  }

}
