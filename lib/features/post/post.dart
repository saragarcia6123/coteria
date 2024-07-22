import 'package:firebase_auth/firebase_auth.dart';

class Post {
  final String title;
  final String body;
  final User user;
  final DateTime timestamp;

  Post(this.body, this.user, this.timestamp, {required this.title});
}
