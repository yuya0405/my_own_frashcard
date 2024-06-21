import 'package:flutter/material.dart';
import 'package:my_own_frashcard/parts/button_with_icon.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: <Widget>[
        Expanded(child: Image.asset("assets/images/image_title.png")),
        _titleText(),
        Divider(
          color: Colors.white,
          height: 50.0,
          indent: 20.0,
          endIndent: 20.0,
          thickness: 1.0,
        ),
        //確認テストをするボタン,
        ButtonWithIcon(
          onPressed: () => print("確認テストを押した！"),
          //TODO
          icon: Icon(Icons.play_arrow),
          label: "確認テストをする",
          primaryColor: Colors.brown,
          onPrimaryColor: Colors.white,
        ),
        //ラジオボタン,
        _radioButtons(),
        //単語一覧を見るボタン
        ButtonWithIcon(
            onPressed: () => print("単語一覧を押した！"),
            //TODO
            icon: Icon(Icons.list),
            label: "単語一覧を見る",
            primaryColor: Colors.grey,
            onPrimaryColor: Colors.white),
        Text("powered by oh884U8 2024", style: TextStyle(fontFamily: "Mont"))
      ])),
    );
  }

  Widget _titleText() {
    return Column(
      children: <Widget>[
        Text(
          "私だけの単語帳",
          style: TextStyle(fontSize: 40.0),
        ),
        Text(
          "My Own Frashcard",
          style: TextStyle(fontSize: 24.0, fontFamily: "Mont"),
        ),
      ],
    );
  }

  Widget _radioButtons() {
    return Padding(
      padding: const EdgeInsets.only(left: 70.0),
      child: Column(
        children: <Widget>[
          RadioListTile(
              title: Text("暗記済みの単語を除外する", style: TextStyle(fontSize: 16.0)),
              value: null,
              groupValue: null,
              onChanged: null),
          RadioListTile(
              title: Text("暗記済みの単語を含む", style: TextStyle(fontSize: 16.0)),
              value: null,
              groupValue: null,
              onChanged: null),
        ],
      ),
    );
  }
}
