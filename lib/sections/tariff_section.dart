import 'package:flutter/material.dart';
import 'package:flutter_lab/utils/app_dimensions.dart';
import 'package:flutter_lab/sections/profile_section.dart';
import 'package:flutter_lab/utils/app_strings.dart';

class TariffSection extends StatelessWidget {
  const TariffSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileSection(
        title: AppStrings.tariff,
        description: AppStrings.tariffDescription,
        child: Column(
          children: [
            _Operation(
              icon: "images/ic_speedometer.png",
              title: AppStrings.changeLimitTitle,
              description: AppStrings.changeLimitDescription,
            ),
            const Divider(indent: 64),
            _Operation(
                icon: "images/ic_percent.png",
                title: AppStrings.paymentsTitle,
                description: AppStrings.paymentsDescription
            ),
            const Divider(indent: 64),
            _Operation(
                icon: "images/ic_arrows_forward_back.png",
                title: AppStrings.informationTitle,
            ),
          ]
        )
    );
  }
}

class _Operation extends StatelessWidget {
  final String _icon;
  final String _title;
  final String? _description;

  const _Operation({
    required String icon,
    required String title,
    String? description,
}):_icon = icon,
  _title = title,
  _description = description;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(_icon),
      title: Text(
          _title,
          style: TextStyle(
              fontSize: AppDimensions.xl,
               fontWeight: FontWeight.bold
          ),
      ),
      subtitle: _description != null ? Text(
        _description,
        style: TextStyle(
          fontSize: AppDimensions.l,
          color: Colors.grey.shade600
       ),
      ) : null,
      trailing: Icon(Icons.navigate_next, color: Colors.grey.shade400),
    );
  }
}