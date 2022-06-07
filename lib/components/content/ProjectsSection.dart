import 'package:flutter/material.dart';
import 'package:nemscep_io/models/Project.dart';
import 'package:nemscep_io/theme/colors.dart';
import 'package:nemscep_io/theme/dimensions.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(twoGridUnit),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(oneGridUnit),
            child: Text("My projects",
                style: Theme.of(context).textTheme.headline5),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: twoGridUnit),
            child: Wrap(
              direction: Axis.horizontal,
              children: projects.map((e) => Padding(
                padding: const EdgeInsets.all(oneGridUnit),
                child: _buildCard(e, context),
              )).toList(),
            )
          )
        ],
      ),
    );
  }

  Widget _buildGridView(BuildContext context) => GridView.count(
    shrinkWrap: true,
    crossAxisSpacing: twoGridUnit,
    mainAxisSpacing: twoGridUnit,
    physics: NeverScrollableScrollPhysics(),
    crossAxisCount: 3,
    children: projects.map((e) => _buildCard(e, context)).toList(),
  );

  Widget _buildCard(Project e, BuildContext context) => Container(
        padding: EdgeInsets.all(twoGridUnit),
        constraints: BoxConstraints(maxWidth: 300),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(oneGridUnit),
            color: bgLightColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              e.title,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: oneGridUnit,
            ),
            Text(e.description, style: Theme.of(context).textTheme.subtitle2),
            SizedBox(height: twoGridUnit,),
            TextButton(onPressed: (){
              _launchUrl(e.link);
            }, child: Text("View on GitHub"))
          ],
        ),
      );

  void _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) throw 'Could not launch $uri';
  }
}
