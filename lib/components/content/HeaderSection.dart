import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:nemscep_io/theme/colors.dart';
import 'package:nemscep_io/theme/dimensions.dart';
import 'package:url_launcher/url_launcher.dart';

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
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
              alignment: Alignment.topRight,
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          alignment: Alignment.center,
                          title: Text(
                            "Shoutout to gtgraphics.de!",
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          content: Wrap(
                            children: [
                              Column(
                                children: [
                                  Text(
                                      "This beautiful image has been taken from the amazing wallpapers showcase done by GT Graphics team."),
                                  Text(
                                      "They have allowed me to use this wallpaper for free, so I want to dedicate this dialog as a shoutout to their amazing work!"),
                                  Text("Their work is inspiring me continuously and I do hope that whoever visits my site somehow ends up on theirs as well!"),
                                  SizedBox(height: 24,),
                                  Text("Please do visit their showcase by clicking the button below."),
                                  Text(" You will be absolutely amazed!"),
                                  SizedBox(height: 24,),
                                  TextButton(
                                      onPressed: () {
                                        _launchUrl("https://gtgraphics.de/en");
                                      },
                                      child: Text("VISIT GTGRAPHICS.DE"))
                                ],
                              )
                            ],
                          ),
                        ));
              },
              icon: Icon(Icons.copyright)),
        ),
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

  void _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) throw 'Could not launch $uri';
  }
}
