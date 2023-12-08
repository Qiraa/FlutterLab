import 'package:flutter/material.dart';
import 'package:flutter_lab/utils/app_dimensions.dart';
import 'package:flutter_lab/sections/connected_section.dart';
import 'package:flutter_lab/sections/tags_section.dart';
import 'package:flutter_lab/sections/tariff_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
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
