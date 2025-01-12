import 'package:catalyst/Base/enums/base_screen_state.dart';
import 'package:catalyst/Model/Data/Bookings/GetBookingsResponse.dart';

class BookingsTabState {
  BaseScreenState bookingsAPI;
  String errorMessage;
  List<GetBookingsResponse>? bookings;

  BookingsTabState({this.errorMessage = "", this.bookingsAPI = BaseScreenState
      .loading, this.bookings});

  BookingsTabState copyWith({
    BaseScreenState? bookingsAPI,
    String? errorMessage,
    List<GetBookingsResponse>? getBookingResponse,
  }) {
    return BookingsTabState(
      bookingsAPI: bookingsAPI ?? this.bookingsAPI,
      errorMessage: errorMessage ?? this.errorMessage,
      bookings: getBookingResponse ?? this.bookings,
    );
  }
}