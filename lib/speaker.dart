import 'package:flutter/material.dart';
import 'package:voice_vision/colors.dart';

class SpeakerButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool filled;

  const SpeakerButton({required this.onTap, this.filled = false});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      radius: 22,
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: filled ? Colorss.primaryColor : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.volume_up_outlined,
          size: 18,
          color: Colorss.blue1,
        ),
      ),
    );
  }
}
