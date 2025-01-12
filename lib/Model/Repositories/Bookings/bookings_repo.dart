abstract class BookingsRepo {
  Future getAllBookings();

  Future createBooking();

  Future updateBooking(num id);

  Future deleteBooking(num id);
}