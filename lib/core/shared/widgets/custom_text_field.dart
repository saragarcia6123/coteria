import 'package:flutter/material.dart';

TextField customTextField({
  required TextEditingController controller,
  required String hint,
  required BuildContext context,
  required bool isPassword,
  TextInputType? keyboardType
}) {

  return TextField(
    controller: controller,
    autocorrect: false,
    obscureText: isPassword,
    keyboardType: keyboardType,

    decoration: InputDecoration(

      hintText: hint,
      contentPadding: const EdgeInsets.only(left: 18.0),

      enabledBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
        borderSide: BorderSide(width: 4.0, color: Theme.of(context).colorScheme.primaryContainer)
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
        borderSide: BorderSide(width: 4.0, color: Theme.of(context).colorScheme.primaryFixed)
      ),

    ),

  );
  
}
