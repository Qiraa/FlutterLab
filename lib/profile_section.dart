import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        Text(
          _title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          _description,
          style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
        ),
        _child,
      ]
    );
  }
}