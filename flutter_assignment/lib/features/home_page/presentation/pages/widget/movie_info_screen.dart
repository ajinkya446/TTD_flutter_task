import 'package:flutter/material.dart';

import '../../../../../commons/widgets/size.dart';
import '../../../../../commons/widgets/widget.dart';
import '../../../../../constants/constants.dart';

class MovieInfoScreen extends StatelessWidget {
  final Size size;
  final String title;
  final String releaseDate;
  final String directedBy;

  const MovieInfoScreen({Key? key, required this.size, required this.title, required this.releaseDate, required this.directedBy}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.13,
      width: size.width * 0.67,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.p16),
            child: Image.asset(Constants.noImageFound, height: size.height * 0.1),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppPadding.p12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                subtitleText(title, textSize: TextSize.s18),
                subtitleText("${Constants.releaseDate} $releaseDate", textSize: TextSize.s12),
                subtitleText("${Constants.directedBy} $directedBy", textSize: TextSize.s12)
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          )
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: AppMargin.m16, vertical: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(AppMargin.m16), color: Colors.transparent.withOpacity(0.6)),
    );
  }
}
