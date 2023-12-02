import 'package:flutter/material.dart';
import 'package:flutter_lab/colors.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: Stack(
          alignment: AlignmentDirectional.center,
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
                    ]
                ),
            ),
          ],
        )
    );
  }
}
