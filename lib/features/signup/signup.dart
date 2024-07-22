import '../../core/services/auth.dart';
import '../../core/shared/widgets/custom_text_field.dart';
import '../../core/shared/widgets/login_button.dart';
import '../../core/shared/widgets/logo_app_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  @override
  Widget build(BuildContext context) {

    TextEditingController emailInputController = TextEditingController();
    TextEditingController passwordInputController = TextEditingController();
    
    return Scaffold(
      appBar: const LogoAppBarWidget(showExtras: false),

      body: Padding(
          padding: const EdgeInsets.all(8.0),

          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              
                  Text(
                    'Welcome!',
                    style: GoogleFonts.quicksand(
                        fontSize: 32,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold
                    ),
                  ),
              
                  const SizedBox(height: 20.0),
              
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                    child: customTextField(
                        controller: emailInputController,
                        hint: 'Email',
                        context: context,
                        isPassword: false,
                        keyboardType: TextInputType.emailAddress
                    ),
                  ),
              
                  const SizedBox(height: 20.0),
              
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                    child: customTextField(
                      controller: passwordInputController,
                      hint: 'Password',
                      context: context,
                      isPassword: true
                    ),
                  ),
              
                  const SizedBox(height: 20.0),
              
                  LoginButton(
                    text: 'Sign Up',
                    loginMethod: () => emailSignUpMethod(
                      emailAddress: emailInputController.text,
                      password: passwordInputController.text,
                      context: context
                    ),
                  ),
              
                  const SizedBox(height: 20.0),
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?'),
              
                      TextButton(
                          onPressed: () =>
                              Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false),
                          child: const Text('Login')
                      ),
              
                    ],
                  )
              
                ],
              ),
            ),
          )
        ),
    );
  }

}

Future emailSignUpMethod({
  required String emailAddress,
  required String password,
  required BuildContext context
}) async {

  AuthService auth = AuthService();
  User? user = await auth.emailSignUp(
    emailAddress: emailAddress,
    password: password
  );
  
  if (user == null) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("Sign up error."),
        backgroundColor: Theme.of(context).colorScheme.error,
      ),
    );
  } else {
    Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
  }
  
}
