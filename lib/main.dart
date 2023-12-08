import 'package:flutter/material.dart';
import 'package:flutter_lab/utils/app_dimensions.dart';
import 'package:flutter_lab/profile.dart';
import 'package:flutter_lab/utils/app_strings.dart';
import 'utils/app_colors.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: DefaultTabController(
              length: 2,
              child: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    _getSliverAppBar()
                  ];
                },
                body: TabBarView(
                  children: [
                    const ProfileScreen(),
                    Container()
                  ],
                ),
              ),
          ),
        )
    );
  }
}

SliverAppBar _getSliverAppBar() {
  return SliverAppBar(
    pinned: true,
    expandedHeight: 250,
    leading: IconButton(
        icon: Icon(Icons.close, size: AppDimensions.xxxl,
            color: AppColors.brandGreen),
        onPressed: () => { }
    ),
    actions: [
      Container(
          alignment: Alignment.topRight,
          child: IconButton(
              icon: Icon(Icons.logout, size: AppDimensions.xxxl,
                  color: AppColors.brandGreen),
              onPressed: () => { }
          )
      )
    ],
    flexibleSpace: FlexibleSpaceBar(
      background: Container(
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

            ]
        ),
      ),
    ),
    bottom: TabBar(
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
    ),
  );
}