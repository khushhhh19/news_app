import 'package:flutter/material.dart';
import 'news_page.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData.dark(),
      home: NewsPage(),
    )
);