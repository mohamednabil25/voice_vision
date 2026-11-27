import 'package:flutter/material.dart' hide Card;
import 'package:voice_vision/colors.dart';
import 'package:voice_vision/icon.dart';
import 'package:voice_vision/Card.dart';
import 'package:voice_vision/speaker.dart';

class SmallFeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const SmallFeatureCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      onTap: onTap,
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconTile(
                icon: icon,
                background: Colorss.primaryColor,
                color: Colorss.blue1,
                size: 44,
              ),
              SpeakerButton(onTap: () {}),
            ],
          ),
          const SizedBox(height: 14),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w800,
              color: Colorss.blue2,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colorss.blue1,
            ),
          ),
        ],
      ),
    );
  }
}
