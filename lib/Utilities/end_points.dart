abstract class EndPoint{
  static String baseURL = "https://test.catalystegy.com/api/";
  static String retrieveUsersApi = "${baseURL}users";
  static String createUsersApi = "${baseURL}users";
  static String retrieveSpecificUsersApi = "${baseURL}users/{id}";
  static String updateSpecificUsersApi = "${baseURL}users/{id}";
  static String deleteSpecificUsersApi = "${baseURL}users/{id}";
  static String retrievePropertiesApi = "${baseURL}properties/{id}";
  static String createPropertyApi = "${baseURL}properties";
  static String retrieveSpecificPropertyApi = "${baseURL}properties/{id}";
  static String updateSpecificPropertyApi = "${baseURL}properties/{id}";
  static String deleteSpecificPropertyApi = "${baseURL}properties/{id}";
  static String retrieveBookingsApi = "${baseURL}bookings";
  static String createNewBookingApi = "${baseURL}bookings";
  static String updateSpecificBookingStatusApi = "${baseURL}bookings/{id}/status";
  static String deleteSpecificBookingApi = "${baseURL}bookings/{id}";
}