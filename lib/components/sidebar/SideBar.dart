import 'package:flutter/material.dart';
import 'package:nemscep_io/components/sidebar/AvatarSection.dart';
import 'package:nemscep_io/components/sidebar/InfoSection.dart';
import 'package:nemscep_io/theme/dimensions.dart';

import 'DownloadCVSection.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: Column(
          children: [
            AvatarSection(),
            InfoSection(),
          ],
        ),
      );


}
