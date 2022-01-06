import 'package:flutter/material.dart';
import '../contents/player2.dart';

class wudassie extends StatelessWidget {
  const wudassie({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('wudassie'),
      ),
      body: new Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('images/church.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Center(
          child: ListView(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return MaterialApp(
                        home: MyApp('audio/sen.mp3'),
                      );
                    }),
                  );
                },
                child: ListTile(
                  title: Text(
                    'ዘሰኑይ',
                    style: TextStyle(fontSize: 13),
                  ),
                  leading: Icon(
                    Icons.music_note,
                    color: Colors.blue,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return MaterialApp(
                        home: MyApp('audio/sel.mp3'),
                      );
                    }),
                  );
                },
                child: ListTile(
                  title: Text(
                    'ዘሠሉስ',
                    style: TextStyle(fontSize: 13),
                  ),
                  leading: Icon(
                    Icons.music_note,
                    color: Colors.blue,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return MaterialApp(
                        home: MyApp('audio/reb.mp3'),
                      );
                    }),
                  );
                },
                child: ListTile(
                  title: Text(
                    'ዘረቡዕ',
                    style: TextStyle(fontSize: 13),
                  ),
                  leading: Icon(
                    Icons.music_note,
                    color: Colors.blue,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  //print("aaaffffffffffffffffffffffffffffff");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                     // print("jfffffffffffffffffffffffffffffff");
                      return MaterialApp(
                        home: MyApp('audio/ham.mp3'),
                      );
                    }),
                  );
                },
                child: ListTile(
                  title: Text(
                    'ዘሀሙስ',
                    style: TextStyle(fontSize: 13),
                  ),
                  leading: Icon(
                    Icons.music_note,
                    color: Colors.blue,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return MaterialApp(
                        home: MyApp('audio/arb.mp3'),
                      );
                    }),
                  );
                },
                child: ListTile(
                  title: Text(
                    'ዘአርብ',
                    style: TextStyle(fontSize: 13),
                  ),
                  leading: Icon(
                    Icons.music_note,
                    color: Colors.blue,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return MaterialApp(
                        home: MyApp('audio/ked.mp3'),
                      );
                    }),
                  );
                },
                child: ListTile(
                  title: Text(
                    'ዘቀዳሚት',
                    style: TextStyle(fontSize: 13),
                  ),
                  leading: Icon(
                    Icons.music_note,
                    color: Colors.blue,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return MaterialApp(
                        home: MyApp('audio/ehu.mp3'),
                      );
                    }),
                  );
                },
                child: ListTile(
                  title: Text(
                    'ዘሰንበት',
                    style: TextStyle(fontSize: 13),
                  ),
                  leading: Icon(
                    Icons.music_note,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
