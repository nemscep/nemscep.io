import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nemscep_io/theme/dimensions.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../theme/colors.dart';

class SocialSection extends StatelessWidget {
  const SocialSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(oneGridUnit),
          color: bgLightColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                _launchUrl("https://www.linkedin.com/in/nemscep/");
              },
              icon: SvgPicture.asset("assets/icons/linkedin.svg")),
          IconButton(
            onPressed: () {
              _launchUrl("https://github.com/nemscep");
            },
            icon: SvgPicture.asset("assets/icons/github.svg",
                color: Colors.white),
          ),
          IconButton(
              onPressed: () {
                _launchUrl("https://mail.google.com/mail/?view=cm&fs=1&to=nemscepanovic@gmail.com&su=SUBJECT&body=BODY&bcc=someone.else@example.com");
              },
              icon: SvgPicture.asset("assets/icons/gmail.svg"))
        ],
      ),
    );
  }

  void _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) throw 'Could not launch $uri';
  }
}
