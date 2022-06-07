import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:nemscep_io/theme/colors.dart';
import 'package:nemscep_io/theme/dimensions.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(fit: StackFit.expand, children: [
        Image.asset(
          "assets/images/mirage.jpeg",
          fit: BoxFit.cover,
        ),
        Container(color: bgColor.withOpacity(0.66)),
        Padding(
          padding: const EdgeInsets.all(twoGridUnit),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "nemscep.io",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: Colors.white),
              ),
              DefaultTextStyle(
                style: Theme.of(context).textTheme.subtitle1!,
                child: Row(
                  children: [
                    AnimatedTextKit(
                        repeatForever: true,
                        pause: Duration(seconds: 2),
                        animatedTexts: [
                          TyperAnimatedText(
                              speed: Duration(milliseconds: 60),
                              "Hello there!"),
                          TyperAnimatedText(
                              speed: Duration(milliseconds: 60),
                              "Welcome to my online portfolio!"),
                        ]),
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
