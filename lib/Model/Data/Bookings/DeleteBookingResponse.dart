/// id : 41
/// user_id : 426
/// property_id : 975
/// start_date : "2025-02-01"
/// end_date : "2025-02-09"
/// status : "canceled"
/// created_at : "2025-01-08T01:13:55.000000Z"
/// updated_at : "2025-01-10T18:58:35.000000Z"
/// user : {"id":426,"name":"Lon Parisian","email":"hassie10@example.net","phone":"520-679-9979","role":"admin","profile_image":"https://bio3.catalyst.com.eg/public/Catalyst_portfolio/IMG_0997%20(1).jpg","intro_video":"https://bio3.catalyst.com.eg/public/Catalyst_portfolio/techtest.mp4","created_at":"2025-01-07T20:41:31.000000Z","updated_at":"2025-01-07T20:41:31.000000Z"}
/// property : {"id":975,"user_id":343,"name":"sed ut enim","description":"Sapiente ipsum fugiat incidunt quas dolorem cupiditate. Et ut vero sit velit. Ducimus repellendus omnis et quaerat quam.","price":"6061.45","location":"89720 Melvin Mount\nJadahaven, AR 41246-9604","images":"[\"property_images\\/857a201ba460491eceb30104ed69dc45.png\",\"property_images\\/fc5aa8c181e0a7560f459be2c4c532a6.png\"]","video":"https://bio3.catalyst.com.eg/public/Catalyst_portfolio/techtest.mp4","created_at":"2025-01-07T23:26:24.000000Z","updated_at":"2025-01-07T23:26:24.000000Z"}

class DeleteBookingResponse {
  // Constructor with required parameters and nullable fields
  DeleteBookingResponse({
    required this.id,
    required this.userId,
    required this.propertyId,
    required this.startDate,
    required this.endDate,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
    required this.property,
  });

  // Factory constructor for JSON deserialization
  factory DeleteBookingResponse.fromJson(Map<String, dynamic> json) {
    return DeleteBookingResponse(
      id: json['id'] as num,
      userId: json['user_id'] as num,
      propertyId: json['property_id'] as num,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      status: json['status'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      user: json['user'] != null ? User.fromJson(json['user']) : null,
      property: json['property'] != null ? Property.fromJson(json['property']) : null,
    );
  }

  // Fields
  final num id;
  final num userId;
  final num propertyId;
  final String startDate;
  final String endDate;
  final String status;
  final String createdAt;
  final String updatedAt;
  final User? user;
  final Property? property;

  // Copy constructor
  DeleteBookingResponse copyWith({
    num? id,
    num? userId,
    num? propertyId,
    String? startDate,
    String? endDate,
    String? status,
    String? createdAt,
    String? updatedAt,
    User? user,
    Property? property,
  }) {
    return DeleteBookingResponse(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      propertyId: propertyId ?? this.propertyId,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      user: user ?? this.user,
      property: property ?? this.property,
    );
  }

  // Convert to JSON
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['user_id'] = userId;
    map['property_id'] = propertyId;
    map['start_date'] = startDate;
    map['end_date'] = endDate;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (user != null) {
      map['user'] = user!.toJson();
    }
    if (property != null) {
      map['property'] = property!.toJson();
    }
    return map;
  }
}


/// id : 975
/// user_id : 343
/// name : "sed ut enim"
/// description : "Sapiente ipsum fugiat incidunt quas dolorem cupiditate. Et ut vero sit velit. Ducimus repellendus omnis et quaerat quam."
/// price : "6061.45"
/// location : "89720 Melvin Mount\nJadahaven, AR 41246-9604"
/// images : "[\"property_images\\/857a201ba460491eceb30104ed69dc45.png\",\"property_images\\/fc5aa8c181e0a7560f459be2c4c532a6.png\"]"
/// video : "https://bio3.catalyst.com.eg/public/Catalyst_portfolio/techtest.mp4"
/// created_at : "2025-01-07T23:26:24.000000Z"
/// updated_at : "2025-01-07T23:26:24.000000Z"

class Property {
  // Constructor with required parameters and nullable fields
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

  // Factory constructor for JSON deserialization
  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(
      id: json['id'] as num,
      userId: json['user_id'] as num,
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      location: json['location'] as String,
      images: json['images'] as String,
      video: json['video'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );
  }

  // Fields
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

  // Copy constructor
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

  // Convert to JSON
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['user_id'] = userId;
    map['name'] = name;
    map['description'] = description;
    map['price'] = price;
    map['location'] = location;
    map['images'] = images;
    map['video'] = video;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}


/// id : 426
/// name : "Lon Parisian"
/// email : "hassie10@example.net"
/// phone : "520-679-9979"
/// role : "admin"
/// profile_image : "https://bio3.catalyst.com.eg/public/Catalyst_portfolio/IMG_0997%20(1).jpg"
/// intro_video : "https://bio3.catalyst.com.eg/public/Catalyst_portfolio/techtest.mp4"
/// created_at : "2025-01-07T20:41:31.000000Z"
/// updated_at : "2025-01-07T20:41:31.000000Z"

class User {
  // Constructor with required parameters
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

  // Factory constructor for JSON deserialization
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as num,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      role: json['role'] as String,
      profileImage: json['profile_image'] as String,
      introVideo: json['intro_video'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );
  }

  // Fields (all final to make the class immutable)
  final num id;
  final String name;
  final String email;
  final String phone;
  final String role;
  final String profileImage;
  final String introVideo;
  final String createdAt;
  final String updatedAt;

  // Copy constructor
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

  // Convert to JSON
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
