import 'package:flutter/material.dart';
import 'package:flutter_lab/app_strings.dart';
import 'package:flutter_lab/profile_section.dart';

import 'app_dimensions.dart';

class TagsSection extends StatefulWidget {
  const TagsSection({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TagsSectionState();
  }
}

class _TagsSectionState extends State<TagsSection> {

  Set<String> selected = {};

  @override
  Widget build(BuildContext context) {
    var tags = [AppStrings.food, AppStrings.selfDevelopment, AppStrings.technologies,
    AppStrings.leisure, AppStrings.selfCare, AppStrings.science];
    var chips = tags
        .map((tag) {
          return ChoiceChip(
            label: Text(tag),
            selected: selected.contains(tag),
            padding: EdgeInsets.all(AppDimensions.xs),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(AppDimensions.xl))
            ),
            disabledColor: Colors.grey.shade300,
            backgroundColor: Colors.grey.shade300,
            selectedColor: Colors.grey.shade400,
            side: BorderSide.none,
            showCheckmark: false,
            labelStyle: const TextStyle(color: Colors.black),
            onSelected: (isSelected) {
              setState(() {
                if (isSelected) {
                  selected.add(tag);
                } else {
                  selected.remove(tag);
                }
              });
            },
          );
        })
        .toList();

    return ProfileSection(
      title: AppStrings.interests,
      description: AppStrings.interestsDescription,
      child: Wrap(
        spacing: AppDimensions.s,
        children: chips,
      ),
    );
  }
}
