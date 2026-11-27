import 'package:flutter/material.dart';
import 'package:voice_vision/colors.dart';

class Card extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;

  const Card({required this.child, required this.padding, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colorss.primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          padding: padding,
          child: SizedBox(width: double.infinity, child: child),
        ),
      ),
    );
  }
}
