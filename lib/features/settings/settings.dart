import '../../core/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsScreen extends StatelessWidget {

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(8.0),
          child: SizedBox(height: 8.0)
        ),

        title: Transform.translate(
          offset: const Offset(0, 5),
          child: const Text(
            'Settings',
            style: TextStyle(
              color: Colors.white,
              fontSize: kDefaultFontSize * 2.0,
              fontWeight: FontWeight.bold),
          ),
        ),

        leading: Transform.translate(
          offset: const Offset(0, 6),
          child: IconButton(
            icon: const Icon(FontAwesomeIcons.arrowLeft, size: iconSize),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),

      ),

      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        )
      ),
      
    );
  }

}
