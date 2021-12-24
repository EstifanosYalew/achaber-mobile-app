import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:file_picker/file_picker.dart';

class MusicPlayer extends StatefulWidget {
  final String mezm;
  MusicPlayer(this.mezm);
  @override
  _MusicPlayerState createState() => _MusicPlayerState(mezm);
}

class _MusicPlayerState extends State<MusicPlayer> {
  String mezm;
  _MusicPlayerState(this.mezm);

  AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;
  String currentTime = '00:00';
  String endTime = '00:00';
  double min = 0.0, max = 0.0, curentValue = 0.0;
  bool isRepeat = false;
  String filePath;

  @override
  void initState() {
    super.initState();

    audioPlayer.onAudioPositionChanged.listen((Duration duration) {
      setState(() {
        currentTime = duration.toString().split('.')[0];
        curentValue = duration.inSeconds.toDouble();
      });
    });

    audioPlayer.onDurationChanged.listen((Duration duartion) {
      setState(() {
        endTime = duartion.toString().split('.')[0];
        max = duartion.inSeconds.toDouble();
      });
    });

    audioPlayer.onPlayerCompletion.listen((event) {
      if (isRepeat) {
        setState(() {
          audioPlayer.seek(Duration(seconds: 0));
          audioPlayer.play(filePath, isLocal: true);
          currentTime = '00:00';
          curentValue = 0.0;
          isPlaying = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 200,
          color: Colors.grey.shade300,
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                mezm,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Slider(
                min: min,
                max: max,
                value: curentValue,
                onChanged: (double newValue) {
                  setState(() {
                    curentValue = newValue;
                    audioPlayer.seek(
                      Duration(
                        seconds: curentValue.toInt(),
                      ),
                    );
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(currentTime),
                  Text(endTime),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.music_note),
                    onPressed: () {
                      playAudio(mezm);
                    },
                  ),
                  IconButton(
                    icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                    onPressed: () {
                      pauseResumeAudio(mezm);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.stop),
                    onPressed: () {
                      stopAudio(mezm);
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.repeat,
                      color: isRepeat ? Colors.blue : Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        isRepeat = !isRepeat;
                      });
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void playAudio(String mezm) async {
    String selectedPath = mezm;

    if (selectedPath != null) {
      filePath = selectedPath;
      await audioPlayer.play(mezm, isLocal: true);
      setState(() {
        mezm = filePath.substring(filePath.lastIndexOf('/') + 1);
        isPlaying = true;
      });
    }
  }

  void stopAudio(mezm) async {
    await audioPlayer.stop();
    setState(() {
      isPlaying = false;
      currentTime = '00:00:00';
      curentValue = 0.0;
    });
  }

  void pauseResumeAudio(mezm) async {
    if (isPlaying) {
      await audioPlayer.pause();
    } else {
      // print('fffffff');
      await audioPlayer.resume();
      // print('eeeeee');
    }

    setState(() {
      isPlaying = !isPlaying;
    });
  }
}
