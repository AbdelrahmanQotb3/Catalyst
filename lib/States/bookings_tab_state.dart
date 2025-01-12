import 'package:catalyst/Base/enums/base_screen_state.dart';
import 'package:catalyst/Model/Data/Bookings/CreateBookingResponse.dart';
import 'package:catalyst/Model/Data/Bookings/DeleteBookingResponse.dart';
import 'package:catalyst/Model/Data/Bookings/GetBookingsResponse.dart';
import 'package:catalyst/Model/Data/Bookings/UpdateBookingStatusResponse.dart';

class BookingsTabState {
  BaseScreenState bookingsAPI;
  String errorMessage;
  List<GetBookingsResponse>? bookings;
  UpdateBookingStatusResponse? updateBookingStatus;
  CreateBookingResponse? createBooking;
  DeleteBookingResponse? deleteBooking;

  BookingsTabState({this.errorMessage = "", this.bookingsAPI = BaseScreenState
      .loading, this.bookings,this.updateBookingStatus,this.createBooking,this.deleteBooking});

  BookingsTabState copyWith({
    BaseScreenState? bookingsAPI,
    String? errorMessage,
    List<GetBookingsResponse>? getBookingResponse,
    UpdateBookingStatusResponse? updateBookingStatus,
    CreateBookingResponse? createBooking,
    DeleteBookingResponse? deleteBooking,
  }) {
    return BookingsTabState(
      bookingsAPI: bookingsAPI ?? this.bookingsAPI,
      errorMessage: errorMessage ?? this.errorMessage,
      bookings: getBookingResponse ?? this.bookings,
      createBooking: createBooking ?? this.createBooking,
      deleteBooking: deleteBooking ?? this.deleteBooking,
      updateBookingStatus: updateBookingStatus ?? this.updateBookingStatus
    );
  }
}