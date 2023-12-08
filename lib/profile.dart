import 'package:flutter/material.dart';
import 'package:flutter_lab/app_dimensions.dart';
import 'package:flutter_lab/connected_section.dart';
import 'package:flutter_lab/profile_header.dart';
import 'package:flutter_lab/tags_section.dart';
import 'package:flutter_lab/tariff_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ProfileHeader(),
          SizedBox(height: AppDimensions.xxxl),
          const ConnectedSection(),
          SizedBox(height: AppDimensions.xxxl),
          const TariffSection(),
          SizedBox(height: AppDimensions.xxxl),
          const TagsSection(),
        ],
      ),
    );
  }
}
