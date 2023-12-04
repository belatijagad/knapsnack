class Consumable {
  int id, price;
  String name, description;

  Consumable({
    required this.id,
    required this.price,
    required this.name,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
    };
  }

  factory Consumable.fromJson(Map<String, dynamic> json) {
    return Consumable(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
    );
  }

  factory Consumable.fromMap(Map<String, dynamic> map) {
    return Consumable(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      price: map['price'],
    );
  }
}
