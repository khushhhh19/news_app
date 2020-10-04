import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(
          top: 40,
        ),
        children: <Widget>[
          Container(
            child: Text('Welcome to News App', style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            padding: EdgeInsets.only(left: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 60,
            child: Card(
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for news...',
                  hintStyle: TextStyle(color: Colors.black54),
                  border: InputBorder.none,
                  icon: Icon(Icons.search, color: Colors.black54),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.format_align_left,
                      color: Colors.red,
                      size: 30,
                    ),
                    Text(
                      'All News',
                      style: TextStyle(fontSize: 15, color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.red,
                      size: 30,
                    ),
                    Text(
                      'Top Stories',
                      style: TextStyle(fontSize: 15, color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.trending_up,
                      color: Colors.red,
                      size: 30,
                    ),
                    Text(
                      'Trending',
                      style: TextStyle(fontSize: 15, color: Colors.red, fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.red,),
            leading: Icon(Icons.home, size: 30,),
            title: Text('Home', style: TextStyle(fontSize: 15),),
            onTap: () => {},
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.red,),
            leading: Icon(Icons.layers, size: 30,),
            title: Text('Suggested Topics', style: TextStyle(fontSize: 15),),
            onTap: () => {},
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.red,),
            leading: Icon(Icons.bookmark, size: 30,),
            title: Text('Saved News', style: TextStyle(fontSize: 15),),
            onTap: () => {},
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.red,),
            leading: Icon(Icons.settings, size: 30,),
            title: Text('Settings', style: TextStyle(fontSize: 15),),
            onTap: () => {},
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.red,),
            leading: Icon(Icons.person, size: 30,),
            title: Text('Login', style: TextStyle(fontSize: 15),),
            onTap: () => {},
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.red,),
            leading: Icon(Icons.help, size: 30,),
            title: Text('Help Center', style: TextStyle(fontSize: 15),),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
