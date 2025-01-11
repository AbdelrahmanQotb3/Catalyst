/// id : 14
/// user_id : 572
/// name : "occaecati sit sintsss"
/// description : "Culpa et quis ea aut eligendi neque et qui. Similique sequi cupiditate occaecati ipsum quibusdam. Et placeat officia explicabo dolores fuga."
/// price : "7416.23"
/// location : "961 Clementina Overpass Apt. 971\nRahsaanberg, MS 53400-4224"
/// images : "[\"property_images\\/87033bf732e5f4e32fd952a22fea0d76.png\",\"property_images\\/da2087a4ced8f30295520508818c185f.png\"]"
/// video : "https://bio3.catalyst.com.eg/public/Catalyst_portfolio/techtest.mp4"
/// created_at : "2025-01-07T23:26:22.000000Z"
/// updated_at : "2025-01-10T20:19:48.000000Z"
/// user : {"id":572,"name":"Dell Pfannerstill","email":"phirthe@example.net","phone":"609.707.1121","role":"owner","profile_image":"https://bio3.catalyst.com.eg/public/Catalyst_portfolio/IMG_0997%20(1).jpg","intro_video":"https://bio3.catalyst.com.eg/public/Catalyst_portfolio/techtest.mp4","created_at":"2025-01-07T20:41:32.000000Z","updated_at":"2025-01-07T20:41:32.000000Z"}

class GetProperties {
  GetProperties({
    this.id,
    this.userId,
    this.name,
    this.description,
    this.price,
    this.location,
    this.images,
    this.video,
    this.createdAt,
    this.updatedAt,
    this.user,
  });

  GetProperties.fromJson(Map<String, dynamic> json)
      : id = json['id'] as num?,
        userId = json['user_id'] as num?,
        name = json['name'] as String?,
        description = json['description'] as String?,
        price = json['price'] as String?,
        location = json['location'] as String?,
        images = json['images'] as String?,
        video = json['video'] as String?,
        createdAt = json['created_at'] as String?,
        updatedAt = json['updated_at'] as String?,
        user = json['user'] != null ? User.fromJson(json['user']) : null;

  final num? id;
  final num? userId;
  final String? name;
  final String? description;
  final String? price;
  final String? location;
  final String? images;
  final String? video;
  final String? createdAt;
  final String? updatedAt;
  final User? user;

  GetProperties copyWith({
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
    return GetProperties(
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


/// id : 572
/// name : "Dell Pfannerstill"
/// email : "phirthe@example.net"
/// phone : "609.707.1121"
/// role : "owner"
/// profile_image : "https://bio3.catalyst.com.eg/public/Catalyst_portfolio/IMG_0997%20(1).jpg"
/// intro_video : "https://bio3.catalyst.com.eg/public/Catalyst_portfolio/techtest.mp4"
/// created_at : "2025-01-07T20:41:32.000000Z"
/// updated_at : "2025-01-07T20:41:32.000000Z"

class User {
  User({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.role,
    this.profileImage,
    this.introVideo,
    this.createdAt,
    this.updatedAt,
  });

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'] as num?,
        name = json['name'] as String?,
        email = json['email'] as String?,
        phone = json['phone'] as String?,
        role = json['role'] as String?,
        profileImage = json['profile_image'] as String?,
        introVideo = json['intro_video'] as String?,
        createdAt = json['created_at'] as String?,
        updatedAt = json['updated_at'] as String?;

  final num? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? role;
  final String? profileImage;
  final String? introVideo;
  final String? createdAt;
  final String? updatedAt;

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
