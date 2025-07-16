import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  const IconLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    final IconSizes iconSizes = IconSizes();
    final IconColors iconColors = IconColors(); // daha açık isimlendirme

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: Column(
        children: [
          Icon(
            Icons.message_outlined,
            color: iconColors.froly, // doğru erişim
            size: iconSizes.iconSmall,
          ),
          Icon(
            Icons.message_outlined,
            color: Colors.amber,
            size: iconSizes.iconSmall,
          ),
          Icon(
            Icons.message_outlined,
            color: Colors.amber,
            size: iconSizes.iconSmall,
          ),
          Icon(
            Icons.message_outlined,
            color: iconColors.froly,
            size: iconSizes.iconSmall,
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
}

class IconColors {
  final Color froly = Color(0xffED617A);
}
