import 'package:flutter/material.dart';
import 'package:nemscep_io/components/common/LeftRightTextWidget.dart';

import '../../theme/dimensions.dart';
import 'BasicInfoSection.dart';
import 'DownloadCVSection.dart';
import 'FooterSection.dart';
import 'LanguagesSection.dart';
import 'SkillsSection.dart';
import 'SocialSection.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Expanded(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(twoGridUnit),
        child: Column(
          children: [
            BasicInfoSection(),
            Divider(),
            SkillsSection(),
            Divider(),
            LanguagesSection(),
            Divider(),
            DownloadCVSection(),
            SocialSection(),
            SizedBox(height: fourGridUnit,),
            FooterSection(),
            SizedBox(height: fiveGridUnit,),
          ],
        ),
      ));
}
