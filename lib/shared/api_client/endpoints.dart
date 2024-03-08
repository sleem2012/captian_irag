


abstract class KEndPoints {
  static String baseUrl = 'https://www.bus-iraq.com/api/v1/client/';

  static String login = '${baseUrl}login';
  static String getSeats = '${baseUrl}direct-bookings/seats/';
  static String getLocations = '${baseUrl}booking-locations';
  static String getCountryCode = '${baseUrl}countries';
  static String getBanners = '${baseUrl}banners';
  static String getFleets = '${baseUrl}fleet-types';
  static String directSearch = '${baseUrl}direct-bookings/search';
  static String bookDirectTrip = '${baseUrl}direct-bookings/book';
  static String bookCustomTrip = '${baseUrl}special-bookings/book';
  static String register = '${baseUrl}register';
}
