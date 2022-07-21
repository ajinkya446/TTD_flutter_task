import 'package:flutter/material.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/features/character_page/data/models/character_model.dart';

import '../../commons/widgets/size.dart';
import '../../commons/widgets/widget.dart';

class CharacterInfo extends StatefulWidget {
  final CharacterModels info;

  const CharacterInfo({Key? key, required this.info}) : super(key: key);

  @override
  _CharacterInfoState createState() => _CharacterInfoState();
}

class _CharacterInfoState extends State<CharacterInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            title: subtitleText(widget.info.name, color: Colors.white, textSize: TextSize.s18),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((ctx, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16, vertical: AppPadding.p10),
                child: Card(
                  color: Colors.white30,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppPadding.p12, horizontal: AppPadding.p20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        subtitleText("${Constants.actorName} ${widget.info.name}", color: Colors.white, textSize: TextSize.s14),
                        const SizedBox(height: 20),
                        subtitleText("${Constants.actorBirthYear} ${widget.info.birth_year}", color: Colors.white, textSize: TextSize.s14),
                        const SizedBox(height: 20),
                        subtitleText("${Constants.actorHeight} ${widget.info.height}", color: Colors.white, textSize: TextSize.s14),
                        const SizedBox(height: 20),
                        subtitleText("${Constants.actorGender} ${widget.info.gender}", color: Colors.white, textSize: TextSize.s14),
                        const SizedBox(height: 20),
                        subtitleText("${Constants.actorWeight} ${widget.info.mass}", color: Colors.white, textSize: TextSize.s14),
                        const SizedBox(height: 20),
                        subtitleText("${Constants.actorSkinColor} ${widget.info.skin_color}", color: Colors.white, textSize: TextSize.s14),
                      ],
                    ),
                  ),
                ),
              );
            }, childCount: 1),
          ),
          SliverToBoxAdapter(
            child: displayContent(),
          )
        ],
      ),
    );
  }

  Widget displayContent() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: double.maxFinite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 40,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  color: Colors.green,
                  size: 40,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_alert,
                  color: Colors.red,
                  size: 40,
                ))
          ],
        ),
      ),
    );
  }
}
