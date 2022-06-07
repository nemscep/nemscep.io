import 'package:flutter/material.dart';
import 'package:nemscep_io/theme/dimensions.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class VersionSection extends StatelessWidget {
  const VersionSection({Key? key}) : super(key: key);

  Future<String> versionNumber() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: versionNumber(),
          builder: (context, data) => Padding(
            padding: const EdgeInsets.all(twoGridUnit),
            child: Column(
              children: [
                Text("v${data.data as String}", style: Theme.of(context).textTheme.subtitle2,),
                TextButton(onPressed: (){
                  _launchUrl("https://github.com/nemscep/nemscep.io");
                }, child: Text("View project on GitHub"))
              ],
            ),
          ),
      ),
    );
  }

  void _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) throw 'Could not launch $uri';
  }
}
