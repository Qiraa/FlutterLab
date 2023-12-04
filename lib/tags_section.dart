import 'package:flutter/material.dart';
import 'package:flutter_lab/profile_section.dart';

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
    var tags = [
      "Еда", "Саморазвитие", "Технологии", "Дом", "Досуг", "Забота о себе", "Наука"];
    var chips = tags
        .map((tag) {
          return ChoiceChip(
            label: Text(tag),
            selected: selected.contains(tag),
            padding: const EdgeInsets.all(4),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16))
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
      title: "Интересы",
      description: "Мы подбираем истории и предложения по темам, которые вам нравятся",
      child: Wrap(
        spacing: 8,
        children: chips,
      ),
    );
  }
}
