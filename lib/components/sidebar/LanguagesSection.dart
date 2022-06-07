import 'package:flutter/material.dart';
import 'package:nemscep_io/components/common/LeftRightTextWidget.dart';
import 'package:nemscep_io/components/common/SidebarSectionTitle.dart';
import 'package:nemscep_io/theme/dimensions.dart';

class LanguagesSection extends StatelessWidget {
  const LanguagesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SidebarSectionTitle(title: "Languages"),
        SizedBox(
          height: twoGridUnit,
        ),
        LeftRightTextWidget(left: "Serbian", right: "Native speaker"),
        LeftRightTextWidget(left: "English", right: "Highly proficient (C1)"),
      ],
    );
  }
}
