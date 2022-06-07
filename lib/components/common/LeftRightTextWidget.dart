import 'package:flutter/material.dart';

import '../../theme/dimensions.dart';

class LeftRightTextWidget extends StatelessWidget {
  final String left;
  final String right;
  const LeftRightTextWidget({Key? key, required this.left, required this.right}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: halfGridUnit),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(left,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(color: Colors.white)),
                Text(right,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
