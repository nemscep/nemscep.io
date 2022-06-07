import 'package:flutter/material.dart';
import 'package:nemscep_io/components/common/SidebarSectionTitle.dart';
import 'package:nemscep_io/theme/colors.dart';
import 'package:nemscep_io/theme/dimensions.dart';

import '../../models/Skill.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SidebarSectionTitle(title: "Skills"),
        SizedBox(
          height: twoGridUnit,
        ),
        Wrap(
            direction: Axis.horizontal,
            spacing: oneGridUnit,
            runSpacing: oneGridUnit,
            children: skills.map((e) => _skillChip(context, e.title)).toList()),
        SizedBox(
          height: oneGridUnit,
        )
      ],
    );
  }

  Container _skillChip(BuildContext context, String title) {
    return Container(
      decoration: BoxDecoration(
          color: bgLightColor,
          borderRadius: BorderRadius.circular(oneGridUnit)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: Theme.of(context).textTheme.bodyText1?.color),
        ),
      ),
    );
  }
}
