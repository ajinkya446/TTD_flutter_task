import 'package:flutter/material.dart';

import '../../../../commons/widgets/size.dart';
import '../../../../commons/widgets/widget.dart';
import '../../../character_info_page/character_info_screen.dart';
import '../../data/models/character_model.dart';

class CharacterGridView extends StatelessWidget {
  final List<CharacterModels> response;

  const CharacterGridView({Key? key, required this.response}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: response.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 350,
          childAspectRatio: 2 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (gridCtx, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  gridCtx,
                  MaterialPageRoute(
                      builder: (materialCtx) => CharacterInfo(
                            info: response[index],
                          )));
            },
            child: Card(
                color: Colors.transparent.withOpacity(0.3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: subtitleText(
                          response[index].name[0] + response[index].name.split(" ").last[0],
                          textSize: TextSize.s24,
                          color: Colors.black,
                        )),
                    subtitleText(response[index].name, textSize: TextSize.s14)
                  ],
                )),
          );
        });
  }
}
