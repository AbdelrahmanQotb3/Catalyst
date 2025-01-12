import 'package:catalyst/Base/enums/base_screen_state.dart';
import 'package:catalyst/Model/Data/Bookings/GetBookingsResponse.dart';
import 'package:catalyst/States/bookings_tab_state.dart';
import 'package:catalyst/Utilities/app_constants.dart';
import 'package:catalyst/Utilities/app_error.dart';
import 'package:catalyst/Utilities/booking_card.dart';
import 'package:catalyst/View%20Model/bookings_tab_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../di.dart';

class BookingsTab extends StatefulWidget {
  const BookingsTab({super.key});

  @override
  State<BookingsTab> createState() => _BookingsTabState();
}

class _BookingsTabState extends State<BookingsTab> {
  BookingsTabViewModel viewModel = getIt();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel.loadAllBookings();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingsTabViewModel , BookingsTabState>(
      bloc: viewModel,
      builder: (context , state){
        if(state.bookingsAPI == BaseScreenState.loading){
          return AppConstants.loadingView();
        }else if(state.bookingsAPI == BaseScreenState.success){
          return buildBookingsList(state.bookings!);
        }else{
          return AppError(error: state.errorMessage);
        }
      },
    );
  }

  Widget buildBookingsList(List<GetBookingsResponse> bookings) {
    return ListView.builder(
      itemCount: bookings.length,
      itemBuilder: (context , index){
        return BookingCard(booking: bookings[index]);
      },
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(8),

    );
  }
}
