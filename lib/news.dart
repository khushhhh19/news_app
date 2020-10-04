class News {
  Source source;
  String auth;
  String title;
  String desc;
  String url;
  String urlToImage;
  String publish;

  News(
      {this.source,
      this.auth,
      this.title,
      this.desc,
      this.url,
      this.urlToImage,
      this.publish});

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
        source: Source.fromJson(json['source']),
        auth: json['author'],
        title: json['title'],
        desc: json['description'],
        url: json['url'],
        urlToImage: json['urlToImage'],
        publish: json['publishedAt']);
  }
}

class Source {
  String name;
  String id;

  Source({this.name, this.id});

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(name: json['name'], id: json['id']);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{'name': name, 'id': id};
}
