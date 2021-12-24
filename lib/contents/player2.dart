import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MyApp extends StatelessWidget {
  final String mezm;
  const MyApp(this.mezm);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Player(mezm),
        ),
      ),
    );
  }
}

class Player extends StatefulWidget {
  final String mezm;
  Player(this.mezm);

  @override
  _PlayerState createState() => _PlayerState(mezm);
}

class _PlayerState extends State<Player> {
  String mezm;
  _PlayerState(this.mezm);
  static AudioCache cache = AudioCache();
   AudioPlayer player;

  bool isPlaying = false;
  bool isPaused = false;

  void playHandler() async {
    if (isPlaying) {
      player.stop();
    } else {
      player = await cache.play(mezm);
    }

    setState(() {
      if (isPaused) {
        isPlaying = false;
        isPaused = false;
      } else {
        isPlaying = !isPlaying;
      }
    });
  }

  void pauseHandler() {
    if (isPaused && isPlaying) {
      player.resume();
    } else {
      player.pause();
    }
    setState(() {
      isPaused = !isPaused;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        PlayerButton(
          onPressed: playHandler,
          isTrue: isPlaying,
          trueText: "Stop",
          falseText: "Play",
        ),
        PlayerButton(
          onPressed: isPlaying ? pauseHandler : null,
          // onPressed: () {
          //   if (isPlaying) {
          //     pauseHandler();
          //   }
          // },
          isTrue: isPaused,
          trueText: "Resume",
          falseText: "Pause",
        ),
      ],
    );
  }
}

class PlayerButton extends StatefulWidget {
  final VoidCallback onPressed;
  final bool isTrue;
  final String trueText;
  final String falseText;
  PlayerButton({
    @required this.onPressed,
    @required this.isTrue,
    @required this.trueText,
    @required this.falseText,
  });
  @override
  _PlayerButtonState createState() => _PlayerButtonState();
}

class _PlayerButtonState extends State<PlayerButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SizedBox(
        width: 200,
        height: 70,
        child: RaisedButton(
          elevation: 10,
          onPressed: widget.onPressed,
          child: Text(widget.isTrue ? widget.trueText : widget.falseText,
              style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
