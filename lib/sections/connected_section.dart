import 'package:flutter/material.dart';
import 'package:flutter_lab/utils/app_dimensions.dart';
import 'package:flutter_lab/sections/profile_section.dart';
import 'package:flutter_lab/utils/app_strings.dart';

class ConnectedSection extends StatelessWidget {
  const ConnectedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileSection(
        title: AppStrings.connections,
        description: AppStrings.connectionDescription,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.xl),
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            _ConnectedCard(
                icon: "images/ic_sber.png",
                title: AppStrings.firstCardTitle,
                description: AppStrings.firstCardDescription,
                price: AppStrings.firstCardPrice),
            _ConnectedCard(
                icon: "images/ic_brandpercent.png",
                title: AppStrings.secondCardTitle,
                description: AppStrings.secondCardDescription,
                price: AppStrings.secondCardPrice),
            _ConnectedCard(
                icon: "images/ic_sber.png",
                title: AppStrings.thirdCardTitle,
                description: AppStrings.thirdCardDescription,
                price: AppStrings.thirdCardPrice),
          ]),
        ));
  }
}

class _ConnectedCard extends StatelessWidget {
  final String _icon;
  final String _title;
  final String _description;
  final String _price;

  const _ConnectedCard({
    required String icon,
    required String title,
    required String description,
    required String price,
  })  : _icon = icon,
        _title = title,
        _description = description,
        _price = price;

  @override
  Widget build(BuildContext context) {
    return Card(
        shadowColor: Colors.grey.shade300,
        color: Colors.white,
        surfaceTintColor: Colors.white,
        child: Container(
          padding: EdgeInsets.all(AppDimensions.xl),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Image.asset(_icon,
                    width: AppDimensions.xxxxl, height: AppDimensions.xxxxl),
                SizedBox(width: AppDimensions.s),
                Text(_title, style: TextStyle(fontSize: AppDimensions.xl))
              ]),
              SizedBox(height: AppDimensions.xxxl),
              Text(_description, style: TextStyle(fontSize: AppDimensions.l)),
              Text(_price,
                  style: TextStyle(
                      fontSize: AppDimensions.l, color: Colors.grey.shade500))
            ],
          ),
        ));
  }
}
