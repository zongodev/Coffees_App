
class Coffee {
  final String? title;
  final String? description;
  final String? image;
  final int? id;
  Coffee({ this.title, this.description ,  this.image ,  this.id});

  factory Coffee.fromJson(Map<String , dynamic> jsonData){
    return Coffee(title: jsonData["title"], description: jsonData["description"], image: jsonData["image"], id: jsonData["id"]);
  }
}