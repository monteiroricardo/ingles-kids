import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class TabBar1Page extends StatefulWidget {
  @override
  _TabBar1PageState createState() => _TabBar1PageState();
}

class _TabBar1PageState extends State<TabBar1Page> {
  final List animais = ["cao", "gato", "leao", "macaco", "ovelha", "vaca"];

  final AudioCache _audioCache = AudioCache(prefix: "audios/");

  _executar(String name) {
    _audioCache.play(name + ".mp3");
  }

  @override
  void initState() {
    super.initState();
    List<String> listTemp = [];
    for (var animal in animais) {
      listTemp.add(animal + ".mp3");
    }
    _audioCache.loadAll(listTemp);
    print(listTemp.toString());
    listTemp = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      itemCount: animais.length,
      itemBuilder: (ctx, i) {
        return InkWell(
            onTap: () => _executar(animais[i]),
            child: Image.asset("assets/images/${animais[i]}.png"));
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
    ));
  }
}
