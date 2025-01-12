import 'package:catalyst/Base/enums/base_screen_state.dart';
import 'package:catalyst/Model/Data/Bookings/GetBookingsResponse.dart';
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
    print("Loading");
    try{
      List<GetBookingsResponse> bookings = await bookingsRepo.getAllBookings();
      emit(state.copyWith(bookingsAPI: BaseScreenState.success , getBookingResponse: bookings));
      print("Success");
    }catch(exception){
      emit(state.copyWith(bookingsAPI: BaseScreenState.failure , errorMessage: exception.toString()));
      print("Error");
    }
  }

}