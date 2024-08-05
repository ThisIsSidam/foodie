import 'package:flutter/material.dart';

class WhiteIconButton extends StatelessWidget {
  final Widget icon;
  final void Function() onPressed;
  const WhiteIconButton({
    super.key, 
    required this.icon,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: icon,
        color: Colors.red,
        onPressed: onPressed,
      ),
    );
  }
}