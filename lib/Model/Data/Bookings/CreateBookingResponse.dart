/// message : "Booking created successfully."
/// booking : {"user_id":"70","property_id":"50","start_date":"2025-01-22","end_date":"2025-01-25","updated_at":"2025-01-11T13:02:26.000000Z","created_at":"2025-01-11T13:02:26.000000Z","id":1036}

class CreateBookingResponse {
  String message;
  Booking? booking;

  // Constructor with optional message and booking parameters
  CreateBookingResponse({this.message = '', this.booking});

  // Named constructor from JSON
  CreateBookingResponse.fromJson(Map<String, dynamic> json)
      : message = json['message'] ?? '',
        booking = json['booking'] != null ? Booking.fromJson(json['booking']) : null;

  // Copy constructor
  CreateBookingResponse copyWith({String? message, Booking? booking}) {
    return CreateBookingResponse(
      message: message ?? this.message,
      booking: booking ?? this.booking,
    );
  }

  // Convert the object to JSON
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (booking != null) {
      map['booking'] = booking?.toJson();
    }
    return map;
  }
}

/// user_id : "70"
/// property_id : "50"
/// start_date : "2025-01-22"
/// end_date : "2025-01-25"
/// updated_at : "2025-01-11T13:02:26.000000Z"
/// created_at : "2025-01-11T13:02:26.000000Z"
/// id : 1036

class Booking {
  String userId;
  String propertyId;
  String startDate;
  String endDate;
  String updatedAt;
  String createdAt;
  num id;

  // Constructor with required parameters and default values
  Booking({
    required this.userId,
    required this.propertyId,
    required this.startDate,
    required this.endDate,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  // Named constructor from JSON
  Booking.fromJson(Map<String, dynamic> json)
      : userId = json['user_id'],
        propertyId = json['property_id'],
        startDate = json['start_date'],
        endDate = json['end_date'],
        updatedAt = json['updated_at'],
        createdAt = json['created_at'],
        id = json['id'];

  // Copy constructor
  Booking copyWith({
    String? userId,
    String? propertyId,
    String? startDate,
    String? endDate,
    String? updatedAt,
    String? createdAt,
    num? id,
  }) {
    return Booking(
      userId: userId ?? this.userId,
      propertyId: propertyId ?? this.propertyId,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      updatedAt: updatedAt ?? this.updatedAt,
      createdAt: createdAt ?? this.createdAt,
      id: id ?? this.id,
    );
  }

  // Convert the object to JSON
  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'property_id': propertyId,
      'start_date': startDate,
      'end_date': endDate,
      'updated_at': updatedAt,
      'created_at': createdAt,
      'id': id,
    };
  }
}
