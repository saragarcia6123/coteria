import 'package:coteria_app/core/services/user_service.dart';

import '../../core/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  
  final FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
  String _username = '';

  @override
  void initState() {
    super.initState();
    user = auth.currentUser;
    if (user != null) {
      UserService().getUserData(user!.uid).then((data) {
        setState(() {
          _username = data['username'];
        });
      });
    }
  }

  void onLogoutPressed(NavigatorState navigator) async {
    AuthService auth = AuthService();
    await auth.signOut();
    navigator.pushNamedAndRemoveUntil('/login', (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    NavigatorState navigator = Navigator.of(context);
    if (user == null) {
      return Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('No user data found'),
          ElevatedButton(
              child: const Text('logout'),
              onPressed: () => onLogoutPressed(navigator)),
        ],
      ));
    } else {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(_username),
            Text(user?.email ?? '',
                style: Theme.of(context).textTheme.bodyLarge),
            const Spacer(),
            ElevatedButton(
                child: const Text('logout'),
                onPressed: () => onLogoutPressed(navigator)),
            const Spacer(),
          ],
        ),
      );
    }
  }
}
