import 'package:flutter/material.dart';
import 'package:nemscep_io/theme/dimensions.dart';

import '../../theme/colors.dart';

class AvatarSection extends StatelessWidget {
  const AvatarSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.9,
      child: Container(
        color: bgLightColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(),
            CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage("assets/images/avatar.jpg")),
            SizedBox(height: twoGridUnit,),
            Text("Nemanja Scepanovic",
                style: Theme.of(context).textTheme.subtitle1),
            SizedBox(height: halfGridUnit,),
            Text(
              "Android Developer @ Quickbit",
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(color: Theme.of(context).textTheme.bodyText1?.color),
              textAlign: TextAlign.center,
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
