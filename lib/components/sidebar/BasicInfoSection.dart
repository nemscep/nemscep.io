import 'package:flutter/material.dart';
import 'package:nemscep_io/components/common/SidebarSectionTitle.dart';

import '../common/LeftRightTextWidget.dart';

class BasicInfoSection extends StatelessWidget {
  const BasicInfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LeftRightTextWidget(left: "Location", right: "Serbia"),
        LeftRightTextWidget(left: "Age", right: "27"),
      ],
    );
  }
}
