import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_dimensions.dart';

class ProfileSection extends StatelessWidget {

  final String _title;
  final String _description;
  final Widget _child;

  const ProfileSection({
    super.key,
    required String title,
    required String description,
    required Widget child,
  }):
      _title = title,
      _description = description,
      _child = child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.xl),
          child: Text(
            _title,
            style: TextStyle(fontSize: AppDimensions.xxl,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.xl),
          child: Text(
            _description,
            style: TextStyle(fontSize: AppDimensions.l, color: Colors.grey.shade600),
          ),
        ),
        _child,
      ]
    );
  }
}