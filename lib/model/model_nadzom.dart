class ModelNadzom {
  int? id;
  String? arabic;
 

  ModelNadzom(this.id, this.arabic);

  ModelNadzom.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    arabic = json['arabic'];
   
  }
}
