import 'package:flutter/material.dart' hide Card;
import 'package:voice_vision/colors.dart';
import 'package:voice_vision/icon.dart';
import 'package:voice_vision/Card.dart';
import 'package:voice_vision/speaker.dart';

class EmergencyCard extends StatelessWidget {
  final VoidCallback onTap;
  const EmergencyCard({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      onTap: onTap,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          IconTile(
            icon: Icons.emergency,
            background: Colorss.red,
            color: Colors.red,
            size: 56,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Flexible(
                      child: Text(
                        'Emergency & Safety',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colorss.blue2,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colorss.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Text(
                        'SOS',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w800,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const Text(
                  'Contact caregiver\ncheck safe zone',
                  style: TextStyle(
                    fontSize: 13,
                    height: 1.3,
                    fontWeight: FontWeight.w500,
                    color: Colorss.blue2,
                  ),
                ),
              ],
            ),
          ),
          SpeakerButton(onTap: () {}),
          const Icon(Icons.chevron_right, color: Colorss.blue2, size: 20),
        ],
      ),
    );
  }
}
