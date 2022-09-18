class ModelIstilah {
  int? id;
  String? arabic;
  String? arabica;
  String? terjemahan;

  ModelIstilah(this.id, this.arabic,  this.arabica, this.terjemahan);

  ModelIstilah.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    arabic = json['arabic'];
    arabica = json['arabica'];
    terjemahan = json['terjemahan'];
  }
}
