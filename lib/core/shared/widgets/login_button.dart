import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {

  final String text;
  final Function loginMethod;

  const LoginButton({super.key, required this.text, required this.loginMethod});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => loginMethod(),
      label: Text(
        text,
        style: GoogleFonts.quicksand(
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
      )
    );
  }
}
