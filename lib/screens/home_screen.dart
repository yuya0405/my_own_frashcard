import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(child: Image.asset("assets/images/image_title.png")),
            _titleText(),
            //TODO 横線,
            //TODO 確認テストをするボタン,
            //TODO ラジオボタン,
            //TODO 単語一覧を見るボタン
            Text("powered by oh884U8 2024")
          ]
        )
      ),
    );
  }

  Widget _titleText() {
    return Column(
      children: <Widget>[
        Text("私だけの単語帳", style: TextStyle(fontSize: 40.0),),
        Text("My Own Frashcard", style: TextStyle(fontSize: 24.0),),
      ],
    );
  }
}
