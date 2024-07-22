import '../../core/services/date_time_formatter.dart';
import '../../features/post/post.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  
  final Post post;

  const PostWidget({
    super.key, required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 300,
      child: Column(
        children: [
          Text(post.title),
          Text(post.body),
          Text(formatDateTime(timestamp: post.timestamp)),
        ],
      ),
    );
  }
}
