import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final Icon icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.grey,
      ),
      child: IconButton(
        onPressed: onTap,
        icon: icon,
      ),
    );
  }
}
