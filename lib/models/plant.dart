import 'dart:convert';

class Plant {
  Plant({
    required this.id,
    required this.name,
    required this.image,
    required this.interval,
  });
  // ignore: sort_constructors_first
  factory Plant.fromMap(Map<String, dynamic> map) {
    return Plant(
      id: map['id'],
      name: map['name'],
      image: map['image'],
      interval: DateTime.fromMillisecondsSinceEpoch(map['interval']),
    );
  }

  factory Plant.fromJson(String source) => Plant.fromMap(json.decode(source));

  final String id;
  final String name;
  final String image;
  final DateTime interval;

  Plant copyWith({
    String? id,
    String? name,
    String? image,
    DateTime? interval,
    int? coins,
  }) {
    return Plant(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      interval: interval ?? this.interval,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'interval': interval.millisecondsSinceEpoch,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Plant(id: $id, name: $name, image: $image, interval: $interval)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Plant &&
        other.id == id &&
        other.name == name &&
        other.image == image &&
        other.interval == interval;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ image.hashCode ^ interval.hashCode;
  }
}
