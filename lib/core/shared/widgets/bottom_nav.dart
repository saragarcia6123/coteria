import '../../utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;

  const BottomNavBar({super.key, required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, 10),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.transparent,
              spreadRadius: 0,
              blurRadius: 10,
            ),
          ],
          color: MediaQuery.of(context).platformBrightness == Brightness.dark ? Colors.black : Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
          border: Border.all(
            width: 4,
            color: Theme.of(context).colorScheme.primaryContainer,
          )
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [

                BottomNavigationBarItem(
                  backgroundColor: Colors.transparent,
                  icon: Icon(
                    selectedIndex == 0 ? FontAwesomeIcons.solidNewspaper : FontAwesomeIcons.newspaper,
                    size: iconSize
                  ),
                  label: 'Home',
                ),

                const BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.globe,
                    size: iconSize,
                  ),
                  label: 'Map'
                ),

                const BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: iconSize,
                  ),
                  label: 'Search'
                ),

                BottomNavigationBarItem(
                  icon: Icon(
                    selectedIndex == 3 ? FontAwesomeIcons.solidPaperPlane : FontAwesomeIcons.paperPlane,
                    size: iconSize,
                  ),
                  label: 'Messages'
                ),

                BottomNavigationBarItem(
                  icon: Icon(
                    selectedIndex == 4 ? FontAwesomeIcons.solidUser : FontAwesomeIcons.user,
                    size: iconSize,
                  ),
                  label: 'Profile'
                ),

              ],

              onTap: (int index) => onTap(index),
              fixedColor: Theme.of(context).colorScheme.primaryContainer,
              unselectedItemColor: MediaQuery.of(context).platformBrightness == Brightness.dark ? Colors.white : Colors.grey,
              elevation: 0,
            ),
          ),
        ),
      ),
    );
  }
  
}
