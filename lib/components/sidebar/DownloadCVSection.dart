import 'package:flutter/material.dart';
import 'package:nemscep_io/theme/dimensions.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadCVSection extends StatelessWidget {
  const DownloadCVSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: oneGridUnit, bottom: twoGridUnit),
        child: TextButton(
            onPressed: () {
              _launchUrl("https://drive.google.com/file/d/1ZLnhkm1-osOF__hQJb3VC-XOGPGqe5sl/view?usp=sharing");
            },
            child: FittedBox(
              child: Row(
                children: [Text("DOWNLOAD CV"), Icon(Icons.download)],
              ),
            )),
      );

  void _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) throw 'Could not launch $uri';
  }
}
