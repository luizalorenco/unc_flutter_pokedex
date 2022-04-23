class Movimento{
  int id;
  String name;

  Movimento.fromJson(Map<String,dynamic> data) 
  : id = data['id'],
  name = data['name'];

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name
  };
}