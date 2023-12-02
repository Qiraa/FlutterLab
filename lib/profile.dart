import 'package:flutter/material.dart';
import 'package:flutter_lab/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ProfileHeader()
        ],
      );
  }
}