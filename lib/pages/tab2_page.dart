import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class TabBar2Page extends StatefulWidget {
  @override
  _TabBar2PageState createState() => _TabBar2PageState();
}

class _TabBar2PageState extends State<TabBar2Page> {
  final List numeros = ["1", "2", "3", "4", "5", "6"];

  final AudioCache _audioCache = AudioCache(prefix: "audios/");

  _executar(String name) {
    _audioCache.play(name + ".mp3");
  }

  @override
  void initState() {
    super.initState();
    List<String> listTemp = [];
    for (var numero in numeros) {
      listTemp.add(numero + ".mp3");
    }
    _audioCache.loadAll(listTemp);
    print(listTemp.toString());
    listTemp = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      itemCount: numeros.length,
      itemBuilder: (ctx, i) {
        return InkWell(
            onTap: () => _executar(numeros[i]),
            child: Image.asset("assets/images/${numeros[i]}.png"));
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
    ));
  }
}
