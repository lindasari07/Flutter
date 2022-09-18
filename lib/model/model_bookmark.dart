import 'dart:convert';

List<BookmarkModel> isiFromJson(String str) => List<BookmarkModel>.from(
    json.decode(str).map((x) => BookmarkModel.fromJson(x)));

String isiToJson(List<BookmarkModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BookmarkModel {
  int? id;
  String? arabic;
  String? arabica;
  String? terjemahan;

  BookmarkModel({this.id, this.arabic, this.arabica, this.terjemahan});

  factory BookmarkModel.fromJson(Map<String, dynamic> json) {
    return BookmarkModel(
      id: json['id'],
      arabic: json['arabic'].toString(),
      arabica: json['arabica'].toString(),
      terjemahan: json['terjemahan'].toString(),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'arabic': arabic,
        'arabica': arabica,
        'terjemahan': terjemahan,
      };
}
