import 'package:flutter/material.dart';
import 'package:nemscep_io/models/Experience.dart';
import 'package:nemscep_io/theme/colors.dart';
import 'package:nemscep_io/theme/dimensions.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({Key? key}) : super(key: key);

  final String LN_EXPERIENCES =
      "https://www.linkedin.com/in/nemscep/#:~:text=Show%20all%20activity-,Experience,-Experience";

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: twoGridUnit, top: fourGridUnit),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My experience", style: Theme.of(context).textTheme.headline5),
            Container(
              height: 300,
              child: ListView.separated(
                  shrinkWrap: true,
                  primary: true,
                  separatorBuilder: (context, index) => SizedBox(
                        width: twoGridUnit,
                      ),
                  itemCount: experiences.length,
                  padding: EdgeInsets.symmetric(vertical: twoGridUnit),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      _buildCard(context, experiences[index])),
            ),
          ],
        ),
      );

  Container _buildCard(BuildContext context, Experience experience) =>
      Container(
        width: 300,
        padding: EdgeInsets.all(twoGridUnit),
        decoration: BoxDecoration(
            color: bgLightColor,
            borderRadius: BorderRadius.circular(oneGridUnit)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  experience.name,
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                IconButton(onPressed: () {
                  _launchUrl(experience.link);
                }, icon: Icon(Icons.link))
              ],
            ),
            SizedBox(
              height: oneGridUnit,
            ),
            Text(
              experience.period,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              experience.description,
              style: Theme.of(context).textTheme.subtitle2,
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
            ),
            SizedBox(
              height: twoGridUnit,
            ),
            TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Column(
                              children: [
                                Text(
                                  experience.name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  experience.period,
                                  style: Theme.of(context).textTheme.subtitle2,
                                )
                              ],
                            ),
                            content: Wrap(children: [
                              Column(
                                children: [
                                  Text(experience.description),
                                  SizedBox(
                                    height: twoGridUnit,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        _launchUrl(LN_EXPERIENCES);
                                      },
                                      child: Text("OPEN IN SOURCE"))
                                ],
                              )
                            ]),
                          ));
                },
                child: Text("Read more"))
          ],
        ),
      );

  void _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) throw 'Could not launch $uri';
  }
}
