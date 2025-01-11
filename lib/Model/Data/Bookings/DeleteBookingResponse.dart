/// message : "Booking deleted successfully"

class DeleteBookingResponse {
  String message;

  // Constructor with an optional parameter
  DeleteBookingResponse({this.message = ''});

  // Named constructor from JSON
  DeleteBookingResponse.fromJson(Map<String, dynamic> json)
      : message = json['message'] ?? '';

  // Copy constructor
  DeleteBookingResponse copyWith({String? message}) {
    return DeleteBookingResponse(
      message: message ?? this.message,
    );
  }

  // Convert the object to JSON
  Map<String, dynamic> toJson() {
    return {
      'message': message,
    };
  }
}
