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
      body: ListView.builder(
          itemCount: musicList.lenght,
          itemBuilder: (_, int index) {
            final musicItem = musicList[index];
            return ListTile(
                title: Text(musicList.title),
                subtitle: Text(musicList.item),
                leading: Image.network(musicList.imageUrl),
                trailing: Icon(Icons.play_arrow));
          }),
    );
  }
}
