import 'package:coteria_app/core/services/routing_service.dart';
import 'package:coteria_app/core/shared/styles/theme.dart';
import 'package:coteria_app/core/shared/widgets/scaffold_wrapper.dart';
import 'package:coteria_app/core/utils.dart';
import 'package:coteria_app/features/error/error.dart';
import 'package:coteria_app/features/loading/loading.dart';
import 'package:coteria_app/features/signup/signup.dart';
import 'package:coteria_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  @override
  Widget build(BuildContext context) {

    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Nunito Sans", "Quicksand");
    MaterialTheme theme = MaterialTheme(textTheme);
    ThemeData themeData = brightness == Brightness.light ? theme.light() : theme.dark();

    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
    
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      routes: routes,
      title: 'Flutter Demo',
      theme: themeData,
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const LoadingScreen();
            } else if (snapshot.hasError) {
              return const ErrorScreen();
            } else if (snapshot.hasData) {
              return ScaffoldWrapper(
                pages: pages,
                initialIndex: 0,
              );
            } else {
              return const SignUpScreen();
            }
          }
      ),
    );
  }
}