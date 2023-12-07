import 'package:flutter/cupertino.dart';
import 'package:flutter_lab/app_strings.dart';
import 'package:flutter_lab/profile_section.dart';

class ConnectedSection extends StatelessWidget {
  const ConnectedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileSection(
      title: AppStrings.connections,
      description: AppStrings.connectionDescription,
      child: Text("Connections"),
    );
  }
}