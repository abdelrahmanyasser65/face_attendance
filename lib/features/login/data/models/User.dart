class User {
  User({
      this.id, 
      this.name,});

  User.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
  }
  String ?id;
  String ?name;



}