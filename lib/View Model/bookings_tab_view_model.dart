import 'package:catalyst/Base/enums/base_screen_state.dart';
import 'package:catalyst/Model/Data/Bookings/CreateBookingResponse.dart';
import 'package:catalyst/Model/Data/Bookings/DeleteBookingResponse.dart';
import 'package:catalyst/Model/Data/Bookings/GetBookingsResponse.dart';
import 'package:catalyst/Model/Data/Bookings/UpdateBookingStatusResponse.dart';
import 'package:catalyst/Model/Repositories/Bookings/bookings_repo.dart';
import 'package:catalyst/States/bookings_tab_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class BookingsTabViewModel extends Cubit<BookingsTabState>{
  BookingsRepo bookingsRepo;
  BookingsTabViewModel(this.bookingsRepo) : super(BookingsTabState());

  Future<void> loadAllBookings() async {
    emit(state.copyWith(bookingsAPI: BaseScreenState.loading));
    print("Loading bookings...");
    try {
      List<GetBookingsResponse> bookings = await bookingsRepo.getAllBookings();
      print("Bookings loaded: ${bookings.length}");
      emit(state.copyWith(
        bookingsAPI: BaseScreenState.success,
        getBookingResponse: bookings,
      ));
    } catch (exception) {
      print("Error loading bookings: $exception");
      emit(state.copyWith(
        bookingsAPI: BaseScreenState.failure,
        errorMessage: exception.toString(),
      ));
    }
  }

  Future<void> updateBookingsStatus(num id) async {
    emit(state.copyWith(bookingsAPI: BaseScreenState.loading));
    print("Loading bookings...");
    try {
      UpdateBookingStatusResponse updateBookingStatus = await bookingsRepo.updateBooking(id);
      emit(state.copyWith(
        bookingsAPI: BaseScreenState.success,
        updateBookingStatus: updateBookingStatus
      ));
    } catch (exception) {
      print("Error: $exception");
      emit(state.copyWith(
        bookingsAPI: BaseScreenState.failure,
        errorMessage: exception.toString(),
      ));
    }
  }

  Future<void> createBookings() async {
    emit(state.copyWith(bookingsAPI: BaseScreenState.loading));
    print("Loading bookings...");
    try {
      CreateBookingResponse createBookings = await bookingsRepo.createBooking();
      emit(state.copyWith(
        bookingsAPI: BaseScreenState.success,
        createBooking: createBookings,
      ));
    } catch (exception) {
      print("Error : $exception");
      emit(state.copyWith(
        bookingsAPI: BaseScreenState.failure,
        errorMessage: exception.toString(),
      ));
    }
  }

  Future<void> deleteBookings(num id) async {
    emit(state.copyWith(bookingsAPI: BaseScreenState.loading));
    print("Loading bookings...");
    try {
      DeleteBookingResponse deleteBookings = await bookingsRepo.deleteBooking(id);
      emit(state.copyWith(
        bookingsAPI: BaseScreenState.success,
        deleteBooking: deleteBookings,
      ));
    } catch (exception) {
      print("Error : $exception");
      emit(state.copyWith(
        bookingsAPI: BaseScreenState.failure,
        errorMessage: exception.toString(),
      ));
    }
  }


}