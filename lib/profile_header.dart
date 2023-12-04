import 'package:flutter/material.dart';
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
                icon: Icon(Icons.close, size: 24, color: AppColors.brandGreen),
                onPressed: () => { }
              )
            ),
            Container(
                alignment: Alignment.topRight,
                child: IconButton(
                    icon: Icon(Icons.logout, size: 24, color: AppColors.brandGreen),
                    onPressed: () => { }
                )
            ),
            Container(
                padding: const EdgeInsets.only(top: 24),
                alignment: Alignment.center,
                child: Column(
                    children: [
                      Image.asset("images/avatar.png"),
                      const Text(
                        "Екатерина",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 16),
                      TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelStyle: const TextStyle(fontSize: 16),
                        indicatorColor: AppColors.brandGreen,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey.shade600,
                        tabs: const [
                          Tab(
                            text: "Профиль",
                          ),
                          Tab(
                            text: "Настройки",
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
