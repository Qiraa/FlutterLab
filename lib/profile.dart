import 'package:flutter/material.dart';
import 'package:flutter_lab/connected_section.dart';
import 'package:flutter_lab/profile_header.dart';
import 'package:flutter_lab/tags_section.dart';
import 'package:flutter_lab/tariff_sectiom.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        ProfileHeader(),
        ConnectedSection(),
        TariffSection(),
        TagsSection(),
      ],
    );
  }
}