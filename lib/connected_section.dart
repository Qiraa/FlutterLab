import 'package:flutter/cupertino.dart';
import 'package:flutter_lab/profile_section.dart';

class ConnectedSection extends StatelessWidget {
  const ConnectedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileSection(
      title: "У вас подключено",
      description: "Подписки, автоплатежи и сервисы на которые вы подписались",
      child: Text("Connections"),
    );
  }
}