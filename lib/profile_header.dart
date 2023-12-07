import 'package:flutter/material.dart';
import 'package:flutter_lab/app_dimensions.dart';
import 'package:flutter_lab/app_strings.dart';
import 'package:flutter_lab/colors.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.close, size: AppDimensions.xxxl,
                    color: AppColors.brandGreen),
                onPressed: () => { }
              )
            ),
            Container(
                alignment: Alignment.topRight,
                child: IconButton(
                    icon: Icon(Icons.logout, size: AppDimensions.xxxl,
                        color: AppColors.brandGreen),
                    onPressed: () => { }
                )
            ),
            Container(
                padding: EdgeInsets.only(top: AppDimensions.xxxl),
                alignment: Alignment.center,
                child: Column(
                    children: [
                      Image.asset("images/avatar.png"),
                      Text(
                        AppStrings.name,
                        style: TextStyle(
                            fontSize: AppDimensions.xxxl,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: AppDimensions.xl),
                      TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelStyle: TextStyle(fontSize: AppDimensions.xl),
                        indicatorColor: AppColors.brandGreen,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey.shade600,
                        tabs: [
                          Tab(
                            text: AppStrings.profile,
                          ),
                          Tab(
                            text: AppStrings.settings,
                          )
                        ],
                      )
                    ]
                ),
            ),
          ],
    );
  }
}
