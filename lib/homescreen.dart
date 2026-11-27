import 'package:flutter/material.dart';
import 'package:voice_vision/Safety.dart';
import 'package:voice_vision/Top_bar.dart';
import 'package:voice_vision/Welcom.dart';
import 'package:voice_vision/colors.dart';
import 'package:voice_vision/smallobject.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: width * 0.18,
        height: height * 0.1,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colorss.blue,
          shape: CircleBorder(),
          elevation: 5,
          child: Icon(Icons.mic, color: Colors.white, size: 30),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 110),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Top_bar(),
              SizedBox(height: height * 0.02),
              Welcom(),
              SizedBox(height: height * 0.02),
              Row(
                children: [
                  Text(
                    'Explore Features',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colorss.blue2,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Tap or speak mode',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colorss.blue1,
                    ),
                  ),
                ],
              ),

              SizedBox(height: height * 0.02),
              EmergencyCard(onTap: () {}),
              SizedBox(height: height * 0.02),
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: SmallFeatureCard(
                        icon: Icons.payments_outlined,
                        title: 'Currency',
                        subtitle: 'Identify banknotes instantly',
                        onTap: () {},
                      ),
                    ),
                    SizedBox(width: width * 0.03),
                    Expanded(
                      child: SmallFeatureCard(
                        icon: Icons.center_focus_strong_outlined,
                        title: 'Objects',
                        subtitle: 'Spatial real-world scan',
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: SmallFeatureCard(
                        icon: Icons.description,
                        title: 'Reading text',
                        subtitle: 'Reading text from images',
                        onTap: () {},
                      ),
                    ),
                    SizedBox(width: width * 0.03),
                    Expanded(
                      child: SmallFeatureCard(
                        icon: Icons.person,
                        title: 'Face Recognition',
                        subtitle: 'Identify faces in images',
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
