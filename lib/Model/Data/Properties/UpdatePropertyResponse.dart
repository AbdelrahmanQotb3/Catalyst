/// message : "Property updated successfully."
/// property : {"id":17,"user_id":774,"name":"laudantium officiis cum","description":"Totam harum dolores iste delectus soluta quidem ut in. Veniam molestias nobis recusandae qui rerum expedita eum. Omnis pariatur blanditiis quasi tempore et aliquid eligendi.","price":"933.75","location":"292 Francesca Flat\nNew Gerdamouth, AR 45474-4534","images":"[\"property_images\\/61e7c9c6ea9032b54c730e239adf5c50.png\",\"property_images\\/aca922a9a4194f80bc4d9ff17bc0d2d2.png\"]","video":"https://bio3.catalyst.com.eg/public/Catalyst_portfolio/techtest.mp4","created_at":"2025-01-07T23:26:22.000000Z","updated_at":"2025-01-07T23:26:22.000000Z"}

class UpdatePropertyResponse {
  final String message;
  final Property? property;

  UpdatePropertyResponse({
    required this.message,
    this.property,
  });

  /// Factory constructor to create an instance from JSON
  factory UpdatePropertyResponse.fromJson(Map<String, dynamic> json) {
    return UpdatePropertyResponse(
      message: json['message'] ?? '',
      property: json['property'] != null ? Property.fromJson(json['property']) : null,
    );
  }

  /// Create a copy with optional updated fields
  UpdatePropertyResponse copyWith({
    String? message,
    Property? property,
  }) {
    return UpdatePropertyResponse(
      message: message ?? this.message,
      property: property ?? this.property,
    );
  }

  /// Convert an instance to JSON
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (property != null) {
      map['property'] = property!.toJson();
    }
    return map;
  }
}

/// id : 17
/// user_id : 774
/// name : "laudantium officiis cum"
/// description : "Totam harum dolores iste delectus soluta quidem ut in. Veniam molestias nobis recusandae qui rerum expedita eum. Omnis pariatur blanditiis quasi tempore et aliquid eligendi."
/// price : "933.75"
/// location : "292 Francesca Flat\nNew Gerdamouth, AR 45474-4534"
/// images : "[\"property_images\\/61e7c9c6ea9032b54c730e239adf5c50.png\",\"property_images\\/aca922a9a4194f80bc4d9ff17bc0d2d2.png\"]"
/// video : "https://bio3.catalyst.com.eg/public/Catalyst_portfolio/techtest.mp4"
/// created_at : "2025-01-07T23:26:22.000000Z"
/// updated_at : "2025-01-07T23:26:22.000000Z"

class Property {
  final num id;
  final num userId;
  final String name;
  final String description;
  final String price;
  final String location;
  final String images;
  final String video;
  final String createdAt;
  final String updatedAt;

  Property({
    required this.id,
    required this.userId,
    required this.name,
    required this.description,
    required this.price,
    required this.location,
    required this.images,
    required this.video,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Factory constructor to create an instance from JSON
  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(
      id: json['id'],
      userId: json['user_id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      location: json['location'],
      images: json['images'],
      video: json['video'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  /// Create a copy with optional updated fields
  Property copyWith({
    num? id,
    num? userId,
    String? name,
    String? description,
    String? price,
    String? location,
    String? images,
    String? video,
    String? createdAt,
    String? updatedAt,
  }) {
    return Property(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      location: location ?? this.location,
      images: images ?? this.images,
      video: video ?? this.video,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// Convert an instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'name': name,
      'description': description,
      'price': price,
      'location': location,
      'images': images,
      'video': video,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
