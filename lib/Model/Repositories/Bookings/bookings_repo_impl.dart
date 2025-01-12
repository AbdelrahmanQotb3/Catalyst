import 'dart:convert';

import 'package:catalyst/Model/Data/Bookings/GetBookingsResponse.dart';
import 'package:catalyst/Model/Repositories/Bookings/bookings_repo.dart';
import 'package:catalyst/Utilities/app_constants.dart';
import 'package:catalyst/Utilities/end_points.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

@Injectable(as: BookingsRepo)
class BookingsRepoImpl extends BookingsRepo{
  InternetConnectionCheckerPlus internetConnection;

  BookingsRepoImpl(this.internetConnection);

  @override
  Future createBooking() {
    // TODO: implement createBooking
    throw UnimplementedError();
  }

  @override
  Future deleteBooking(String id) {
    // TODO: implement deleteBooking
    throw UnimplementedError();
  }

  @override
  @override
  Future<List<GetBookingsResponse>> getAllBookings() async {
    try {
      if (await internetConnection.hasConnection) {
        Response response = await get(Uri.parse(EndPoint.retrieveBookingsApi));
        if (response.statusCode >= 200 && response.statusCode < 300) {
          print("API Done");
          final List<dynamic> jsonData = jsonDecode(response.body);
          return jsonData
              .map((e) => GetBookingsResponse.fromJson(e as Map<String, dynamic>))
              .toList();
        } else {
          throw AppConstants.defaultMessageError;
        }
      } else {
        throw AppConstants.internetErrorMessage;
      }
    } catch (e) {
      print("Error in getAllBookings: $e");
      rethrow;
    }
  }


  @override
  Future updateBooking(String id) {
    // TODO: implement updateBooking
    throw UnimplementedError();
  }

}