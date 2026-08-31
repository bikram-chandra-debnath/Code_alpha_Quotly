
import 'package:flutter/material.dart';
import 'package:quotly/core/common/widgets/buttons/outlined_button.dart';

class FollowButton extends StatelessWidget {
  const FollowButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return AppOutlinedButton(
      onPressed: () {},
      child: Text("Follow", style: Theme.of(context).textTheme.titleLarge),
    );
  }
}