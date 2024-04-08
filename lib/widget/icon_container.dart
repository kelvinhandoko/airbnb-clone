import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  const IconContainer({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
          shape: MaterialStateProperty.all(const CircleBorder()),
        ),
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: Colors.black,
          size: 16,
        ));
  }
}
