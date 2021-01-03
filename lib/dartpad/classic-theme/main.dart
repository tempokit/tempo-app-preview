import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'App Preview';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: AppPreview(),
    );
  }
}

class AppPreview extends StatefulWidget {
  AppPreview({Key key}) : super(key: key);

  @override
  _AppPreviewState createState() => _AppPreviewState();
}

class _AppPreviewState extends State<AppPreview> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildWorkoutsTab(BuildContext context) {
    var items = [1, 2, 3, 4];

    ListView workouts = ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        });

    return workouts;
  }

  Widget _buildTrackTab(BuildContext context) {
    var items = [3, 2, 3, 4];
    ListView track = ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        });
    return track;
  }

  Widget _buildPostsTab(BuildContext context) {
    var items = [4, 2, 3, 4];
    ListView posts = ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        });
    return posts;
  }

  Widget _buildSettingsTab(BuildContext context) {
    var items = [5, 2, 3, 4];
    ListView settings = ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        });

    return settings;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      _buildWorkoutsTab(context),
      _buildTrackTab(context),
      _buildPostsTab(context),
      _buildSettingsTab(context),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('App Preview'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Workouts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            label: 'Track',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Posts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

