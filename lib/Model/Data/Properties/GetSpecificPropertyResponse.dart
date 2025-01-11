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
/// user : {"id":774,"name":"Agnes Murray","email":"marcia.hayes@example.org","phone":"+1-224-276-6380","role":"admin","profile_image":"https://bio3.catalyst.com.eg/public/Catalyst_portfolio/IMG_0997%20(1).jpg","intro_video":"https://bio3.catalyst.com.eg/public/Catalyst_portfolio/techtest.mp4","created_at":"2025-01-07T20:41:32.000000Z","updated_at":"2025-01-07T20:41:32.000000Z"}

class GetSpecificPropertyResponse {
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
  final User? user;

  GetSpecificPropertyResponse({
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
    this.user,
  });

  factory GetSpecificPropertyResponse.fromJson(Map<String, dynamic> json) {
    return GetSpecificPropertyResponse(
      id: json['id'] ?? 0,
      userId: json['user_id'] ?? 0,
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      price: json['price'] ?? '',
      location: json['location'] ?? '',
      images: json['images'] ?? '',
      video: json['video'] ?? '',
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
      user: json['user'] != null ? User.fromJson(json['user']) : null,
    );
  }

  GetSpecificPropertyResponse copyWith({
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
    User? user,
  }) {
    return GetSpecificPropertyResponse(
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
      user: user ?? this.user,
    );
  }

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
      if (user != null) 'user': user!.toJson(),
    };
  }
}

/// id : 774
/// name : "Agnes Murray"
/// email : "marcia.hayes@example.org"
/// phone : "+1-224-276-6380"
/// role : "admin"
/// profile_image : "https://bio3.catalyst.com.eg/public/Catalyst_portfolio/IMG_0997%20(1).jpg"
/// intro_video : "https://bio3.catalyst.com.eg/public/Catalyst_portfolio/techtest.mp4"
/// created_at : "2025-01-07T20:41:32.000000Z"
/// updated_at : "2025-01-07T20:41:32.000000Z"

class User {
  final num id;
  final String name;
  final String email;
  final String phone;
  final String role;
  final String profileImage;
  final String introVideo;
  final String createdAt;
  final String updatedAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.role,
    required this.profileImage,
    required this.introVideo,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Factory constructor for creating a `User` instance from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      role: json['role'] ?? '',
      profileImage: json['profile_image'] ?? '',
      introVideo: json['intro_video'] ?? '',
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
    );
  }

  /// Create a copy of the `User` instance with updated fields
  User copyWith({
    num? id,
    String? name,
    String? email,
    String? phone,
    String? role,
    String? profileImage,
    String? introVideo,
    String? createdAt,
    String? updatedAt,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      role: role ?? this.role,
      profileImage: profileImage ?? this.profileImage,
      introVideo: introVideo ?? this.introVideo,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// Convert a `User` instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'role': role,
      'profile_image': profileImage,
      'intro_video': introVideo,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
