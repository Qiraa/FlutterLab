import 'package:flutter/cupertino.dart';
import 'package:flutter_lab/profile_section.dart';

class TariffSection extends StatelessWidget {
  const TariffSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileSection(
        title: "Тарифы и лимиты",
        description: "Для операций в Сбербанк Онлайн",
        child: Text("Tariff"),
    );
  }
}
