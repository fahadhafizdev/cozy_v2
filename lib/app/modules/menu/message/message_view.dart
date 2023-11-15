import 'package:cozy_v2/app/data/src/image_string.dart';
import 'package:cozy_v2/app/widgets/coming_soon_page.dart';
import 'package:flutter/material.dart';

class MessageView extends StatelessWidget {
  const MessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ComingSoonPage(imageUrl: ImageString.iconMessage);
  }
}
