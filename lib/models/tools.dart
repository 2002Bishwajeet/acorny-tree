import 'dart:convert';

class Tools {
  final String id;
  final String name;
  final String type;
  final String img;
  Tools({
    required this.id,
    required this.name,
    required this.type,
    required this.img,
  });

  Tools copyWith({
    String? id,
    String? name,
    String? type,
    String? img,
  }) {
    return Tools(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      img: img ?? this.img,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'img': img,
    };
  }

  factory Tools.fromMap(Map<String, dynamic> map) {
    return Tools(
      id: map['id'],
      name: map['name'],
      type: map['type'],
      img: map['img'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Tools.fromJson(String source) => Tools.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Tools(id: $id, name: $name, type: $type, img: $img)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Tools &&
        other.id == id &&
        other.name == name &&
        other.type == type &&
        other.img == img;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ type.hashCode ^ img.hashCode;
  }
}
