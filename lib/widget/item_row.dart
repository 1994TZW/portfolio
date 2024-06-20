import 'package:flutter/material.dart';

import '../theme.dart';

class ItemRow extends StatelessWidget {
  final String text;
  const ItemRow({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          color: secondaryColor.withOpacity(0.6),
          size: 8.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: TextStyle(color: textColor, letterSpacing: 1.75),
        )
      ],
    );
  }
}
