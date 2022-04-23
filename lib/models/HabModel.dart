class Habilidade{
  int id;
  String name;

  Habilidade.fromJson(Map<String,dynamic> data) 
  : id = data['id'],
  name = data['name'];

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name
  };
}