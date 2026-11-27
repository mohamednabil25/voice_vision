import 'package:flutter/material.dart';

class IconTile extends StatelessWidget {
  final IconData icon;
  final Color background;
  final Color color;
  final double size;

  const IconTile({
    required this.icon,
    required this.background,
    required this.color,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, color: color, size: size * 0.5),
    );
  }
}
