import 'package:flutter/material.dart';
import 'package:quotly/core/constants/sizes.dart';
class Reaction extends StatelessWidget {
  const Reaction({super.key, required this.icon, required this.totalReaction});

  final IconData icon;
  final String totalReaction;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: AppSizes.sm / 2),
        Text(totalReaction, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}