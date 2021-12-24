import 'package:achaber/techemari.dart';
import 'package:flutter/material.dart';
import 'package:achaber/contents/wudasemariam.dart';
import '../contents/wudasemariam.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        home: wudassie(),
                      );
                    }),
                  );
                },
                child: ListTile(
                  title: Text(
                    'ውዳሴ ማርያም',
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
                      return HomePage();
                    }),
                  );
                },
                child: ListTile(
                  title: Text(
                    'ወረቦች',
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
                      return Techemari();
                    }),
                  );
                },
                
                child: ListTile(
                  title: Text(
                    'ተጨማሪ',
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) {
                  //     return HomePage();
                  //   }),
                  // );
                },
                child: ListTile(
                  title: Text(
                    'ስለ አጫብር ',
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
      appBar: AppBar(
        title: Text('አጫብር',
            style: TextStyle(
                backgroundColor: Colors.blue,
                color: Colors.white,
                fontSize: 15.0)),
        // actions: [
        //   new IconButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.list_alt,
        //         color: Colors.white,
        //       )),
        // ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'አጫብር',
                style: TextStyle(fontSize: 18),
              ),
              accountEmail: Text(
                'stephenyalew@gmal.com',
                style: TextStyle(fontSize: 18),
              ),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person),
                ),
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return wudassie();
                  }),
                );
              },
              child: ListTile(
                title: Text(
                  'ውዳሴ ማርያም',
                  style: TextStyle(fontSize: 13),
                ),
                leading: Icon(
                  Icons.music_note,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'ወረቦች',
                  style: TextStyle(fontSize: 13),
                ),
                leading: Icon(
                  Icons.music_note,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'ተጨማሪ',
                  style: TextStyle(fontSize: 13),
                ),
                leading: Icon(
                  Icons.youtube_searched_for,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'ስለ አጫብር',
                  style: TextStyle(fontSize: 13),
                ),
                leading: Icon(
                  Icons.note_add,
                  color: Colors.blue,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'ስለ እኛ',
                  style: TextStyle(fontSize: 13),
                ),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
