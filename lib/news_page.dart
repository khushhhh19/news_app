import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/NavDrawer.dart';
import 'dart:async';
import 'dart:convert';
import 'news.dart';
import 'package:gradient_bottom_navigation_bar/gradient_bottom_navigation_bar.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  var index = 0;
  List<News> _list = List<News>();

  Future<List<News>> fetchNews() async {
    final response = await http.get('https://newsapi.org/v2/top-headlines?country=in&apiKey=a3395a080ca644bd946aa6b7cff552a5');
    Map map = json.decode(response.body);
    final res = json.decode(response.body);
    for (int i = 0; i < map['articles'].length; i++) {
      if (map['articles'][i]['author'] != null) {
        _list.add(News.fromJson(map['articles'][i]));
      }
    }
    return _list;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('News App'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.black12,
                      Colors.red
                    ])
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {},
            )
          ],
        ),
        drawer: NavDrawer(),
        bottomNavigationBar: GradientBottomNavigationBar(
          backgroundColorStart: Colors.black12,
          backgroundColorEnd: Colors.red,
          fixedColor: Colors.white70,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.live_help),
              title: new Text('Details'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.share),
              title: new Text('Share'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark), title: Text('Save'))
          ],
        ),
        body: FutureBuilder(
            future: fetchNews(),
            builder:
                // ignore: missing_return
                (BuildContext context, AsyncSnapshot<List<News>> snapshot) {
              if (snapshot.hasData) {
                return Dismissible(
                  key: Key(index.toString()),
                  direction: DismissDirection.vertical,
                  onDismissed: (direction) {
                    setState(() {
                      index++;
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        snapshot.data[index].urlToImage,
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          '${snapshot.data[index].title}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            '${snapshot.data[index].desc}',
                            style: TextStyle(fontSize: 18, color: Colors.white70),
                          ))
                    ],
                  ),
                );
              }
            }));
  }
}
