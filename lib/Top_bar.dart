import 'package:flutter/material.dart';
import 'package:voice_vision/colors.dart';

class Top_bar extends StatelessWidget {
  const Top_bar({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          //width: width * 0.12,
          // height: height * 0.06,
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(left: 4, top: 6),
          decoration: const BoxDecoration(
            color: Colorss.blue,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.remove_red_eye_outlined,
            color: Colorss.primaryColor,
            size: 30,
          ),
        ),
        SizedBox(width: width * 0.04),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'VOICE VISION',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colorss.blue1,
              ),
            ),
            Text(
              'Home',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: Colorss.blue2,
              ),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings_outlined,
            color: Colorss.blue2,
            size: 30,
          ),
        ),
      ],
    );
  }
}
