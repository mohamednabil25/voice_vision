import 'package:flutter/material.dart';
import 'package:voice_vision/colors.dart';
import 'package:voice_vision/speaker.dart';

class Welcom extends StatelessWidget {
  const Welcom({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colorss.primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.01),
          const Text(
            'Hello, Mohamed!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colorss.blue2,
            ),
          ),
          SizedBox(height: height * 0.01),
          const Text(
            'How can I help you today?',
            style: TextStyle(fontSize: 19, color: Colorss.blue1),
          ),
          const SizedBox(height: 16),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: Colorss.gray,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Icon(Icons.graphic_eq, color: Colorss.blue1, size: 20),
                SizedBox(width: width * 0.02),
                const Expanded(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Listening ready • Say "Hey Vision"',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colorss.blue,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: width * 0.02),
                Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    color: Colorss.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: SpeakerButton(filled: true, onTap: () {}),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
