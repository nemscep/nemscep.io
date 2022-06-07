import 'package:flutter/material.dart';
import 'package:nemscep_io/components/sidebar/AvatarSection.dart';
import 'package:nemscep_io/components/sidebar/SideBar.dart';
import 'package:nemscep_io/theme/dimensions.dart';

import '../components/content/ExperienceSection.dart';
import '../components/content/HeaderSection.dart';
import '../components/content/OverviewSection.dart';
import '../components/content/ProjectsSection.dart';
import '../components/content/RecommendationsSection.dart';
import '../components/content/VersionSection.dart';
import '../theme/colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Scaffold(
      appBar: MediaQuery.of(context).size.width <= 1024 ? AppBar(
        backgroundColor: bgColor,
        leading: Builder(builder: (context) => IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, icon: Icon(Icons.menu)),)
      ) : null,
      drawer: SideBar(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              MediaQuery.of(context).size.width <= 1024
                  ? SizedBox()
                  : Expanded(flex: 2, child: SideBar()),
              Expanded(
                  flex: 8,
                  child: Container(
                    color: bgColor,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          HeaderSection(),
                          // OverviewSection(),
                          ExperienceSection(),
                          ProjectsSection(),
                          RecommendationsSection(),
                          SizedBox(
                            height: fiveGridUnit,
                          ),
                          VersionSection()
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
}
