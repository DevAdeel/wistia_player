import 'package:flutter/material.dart';
import 'package:wistia_player/wistia_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wistia Player Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wistia Player'),
        centerTitle: true,
      ),
      body: Center(
        child: WistiaPlayer(
          controller: WistiaPlayerController(
            videoId: 'uz59bo3t2s',
            options: WistiaPlayerOptions(
              autoPlay: true,
              controlsVisibleOnLoad: false,
              doNotTrack: true,
              endVideoBehavior: EndVideoBehavior.loop,
              fullscreenButton: false,
              playbar: false,
              playButton: false,
              fullscreenOnRotateToLandscape: false,
            ),
          ),
        ),
      ),
    );
  }
}
