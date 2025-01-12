abstract class BookingsRepo {
  Future getAllBookings();

  Future createBooking();

  Future updateBooking(String id);

  Future deleteBooking(String id);
}