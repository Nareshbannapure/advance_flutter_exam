import 'dart:convert';

NewsModal fromJson(String str) => NewsModal.mapToModel(json.decode(str));

String toJson(NewsModal data) => json.encode(data.toJson());

class NewsModal {
  String status;
  int totalResults;
  List<Article> articles;

  NewsModal({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory NewsModal.mapToModel(Map m1) => NewsModal(
    status: m1["status"],
    totalResults: m1["totalResults"],
    articles: List<Article>.from(
        m1["articles"].map((e) => Article.mapToModel(e))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "totalResults": totalResults,
    "articles": List<dynamic>.from(articles.map((e) => e.toJson())),
  };
}

class Article {
  Source source;
  String? author;
  String title;
  String description;
  String url;
  String? urlToImage;
  DateTime publishedAt;
  String content;

  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Article.mapToModel(Map m1) => Article(
    source: Source.mapToModel(m1["source"]),
    author: m1["author"],
    title: m1["title"],
    description: m1["description"],
    url: m1["url"],
    urlToImage: m1["urlToImage"],
    publishedAt: DateTime.parse(m1["publishedAt"]),
    content: m1["content"],
  );

  Map<String, dynamic> toJson() => {
    "source": source.toJson(),
    "author": author,
    "title": title,
    "description": description,
    "url": url,
    "urlToImage": urlToImage,
    "publishedAt": publishedAt.toIso8601String(),
    "content": content,
  };
}

class Source {
  String? id;
  String name;

  Source({
    required this.id,
    required this.name,
  });

  factory Source.mapToModel(Map m1) => Source(
    id: m1["id"],
    name: m1["name"],
  );

  Map<String, dynamic> toJson() => {
  "id": id,
  "name": name,
  };
}