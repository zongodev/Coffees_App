import 'package:flutter/material.dart';
class AppBarRow extends StatelessWidget {
  const AppBarRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[300],
          child: const Icon(Icons.person),
        ),
        const Icon(Icons.notifications_outlined)
      ],
    );
  }
}