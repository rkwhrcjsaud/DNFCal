import 'package:flutter/material.dart';

import '../widgets/CharacterSearch/CharacterSearchBar.dart';
import '../widgets/CharacterSearch/CharacterSearchTopWidget.dart';

class CharacterSearchPage extends StatefulWidget {
  const CharacterSearchPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CharacterSearchPageState();
  }
}

class _CharacterSearchPageState extends State<CharacterSearchPage> {

  String inputText = "";

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: statusBarHeight + 16),
          child: const CharacterSearchPageTopWidget(),
        ),
        CharacterSearchBar()
      ],
    );
  }
}
