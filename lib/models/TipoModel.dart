class Tipo{
  int id;
  String name;

  Tipo.fromJson(Map<String,dynamic> data) 
  : id = data['id'],
  name = data['name'];

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name
  };
}