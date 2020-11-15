import 'package:flutter/material.dart';

void main() {
  runApp(MultiCampApp());
}

class MultiCampApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiCampHamiltonApp(),
    );
  }
}

class MultiCampHamiltonApp extends StatelessWidget {
  static const _size = 100.0;
  @override
  Widget build(BuildContext context) {
    final musicList = MusicList.generateList();
    return Scaffold(
        appBar: AppBar(
          title: Text("Hamilton App"),
        ),
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: musicList.lenght,
            itemBuilder: (_, int index) {
              final musicItem = musicList[index];
              return Container(
                margin: const EdgeInsets.all(8),
                child: Card(
                  child: Column(
                    children: [
                      Expanded(child: Image.network(musicItem.imageUrl)),
                      Text(musicItem.title),
                      Text(musicItem.artist),
                    ],
                  ),
                ),
              );
            }));
  }
}
