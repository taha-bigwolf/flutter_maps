import 'package:flutter/material.dart';

import 'map.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Color _lightGrey = Color(0xFFE8E8E8);
  final Color _lightBlue = Color(0xFFB1E1EE);
  final Color _darkBlue = Color(0xFF41B6DC);

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: SafeArea(
          child: Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.account_circle,
                    color: _darkBlue,
                    size: 72,
                  ),
                  backgroundColor: _lightBlue,
                  radius: 48,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('John Williams',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: _darkBlue,
                                    fontWeight: FontWeight.bold)),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('13',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: _darkBlue,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            'Consecutive',
                            style: TextStyle(fontSize: 18, color: _lightBlue),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: _lightBlue,
                          width: 2,
                          height: 80,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text('74',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: _darkBlue,
                                  fontWeight: FontWeight.bold)),
                          Text('Total Days',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: _darkBlue,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: _lightBlue,
                          width: 2,
                          height: 80,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text('3,101',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: _darkBlue,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            'Thoughts',
                            style: TextStyle(fontSize: 18, color: _lightBlue),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 0,
                  color: Color(0xFFE8E8E8),
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, bottom: 16, top: 16),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Achievements',
                        style: TextStyle(fontSize: 24, color: _lightBlue),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text('Community',
                            style: TextStyle(
                                fontSize: 24,
                                color: _darkBlue,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        child: Icon(
                          Icons.account_circle,
                          color: _darkBlue,
                          size: 48,
                        ),
                        backgroundColor: _lightBlue,
                        radius: 28,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQuvqYFDO2GP_J8kv58vqpxh1_-s1Vw7pClcAZKphe_KLvmc6lL'),
                        backgroundColor: _lightBlue,
                        radius: 28,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQXSaXPs-CF0FNg65vSwNINpIPiFgdGHvkqH7414qamQ8iLeR_o'),
                        backgroundColor: _lightBlue,
                        radius: 28,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR2569aJKO0b0Vgo0MeWgx6BbKwmHBbZX9a2LEz2oOu55wUQjdR'),
                        backgroundColor: _lightBlue,
                        radius: 28,
                      ),
                      CircleAvatar(
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 32,
                        ),
                        backgroundColor: _lightBlue,
                        radius: 28,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  child: CommunityMap(),
                ),
                Divider(
                  height: 0,
                  color: Color(0xFFE8E8E8),
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        color: _lightGrey,
                        size: 48,
                      ),
                      Icon(
                        Icons.grid_on,
                        color: _lightGrey,
                        size: 48,
                      ),
                      Icon(
                        Icons.account_circle,
                        color: _darkBlue,
                        size: 48,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
