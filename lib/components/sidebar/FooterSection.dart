import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "©2022 by nemscep.io\nAll rights reserved",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.subtitle2,
      ),
    );
  }
}
