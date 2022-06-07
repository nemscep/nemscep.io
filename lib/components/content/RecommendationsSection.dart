import 'package:flutter/material.dart';
import 'package:nemscep_io/models/Recommendation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/Experience.dart';
import '../../theme/colors.dart';
import '../../theme/dimensions.dart';

class RecommendationsSection extends StatelessWidget {
  const RecommendationsSection({Key? key}) : super(key: key);

  final String LN_RECOMMENDATIONS =
      "https://www.linkedin.com/in/nemscep/#:~:text=Recommendations,Recommendations";

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: twoGridUnit, top: fourGridUnit),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Recommendations",
                style: Theme.of(context).textTheme.headline5),
            Container(
              height: 300,
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                        width: twoGridUnit,
                      ),
                  itemCount: recommendations.length,
                  padding: EdgeInsets.symmetric(vertical: twoGridUnit),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      _buildCard(context, recommendations[index])),
            ),
          ],
        ),
      );

  Widget _buildCard(BuildContext context, Recommendation recommendation) =>
      InkWell(
        onTap: () {
          _launchUrl(LN_RECOMMENDATIONS);
        },
        child: Container(
          width: 400,
          padding: EdgeInsets.all(twoGridUnit),
          decoration: BoxDecoration(
              color: bgLightColor,
              borderRadius: BorderRadius.circular(oneGridUnit)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                recommendation.name,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: oneGridUnit,
              ),
              Text(
                recommendation.source,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: twoGridUnit,
              ),
              Text(
                recommendation.description,
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
                                    recommendation.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    recommendation.source,
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  )
                                ],
                              ),
                              content: Wrap(children: [
                                Column(
                                  children: [
                                    Text(recommendation.description),
                                    SizedBox(
                                      height: twoGridUnit,
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          _launchUrl(LN_RECOMMENDATIONS);
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
        ),
      );

  void _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) throw 'Could not launch $uri';
  }
}
