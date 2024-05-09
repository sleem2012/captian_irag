


abstract class KEndPoints {
  static String baseUrl = 'https://www.bus-iraq.com/api/v1/driver/';

  static String login = '${baseUrl}login';

  static String getBanners = '${baseUrl}banners';
  static String getFleets = '${baseUrl}fleet-types';
  static String getRoots = '${baseUrl}routes';
  static String getLocations = '${baseUrl}booking-locations';

  static String register = '${baseUrl}register';
  static String getTrips = '${baseUrl}trips';
  static String getTripsDates = '${baseUrl}trips/dates';
  static String startTrip = '${baseUrl}trips/start';
  static String transferTrip = '${baseUrl}trips/transfer';
  static String updateStatus = '${baseUrl}trips/update-status';
  static String deadLine = '${baseUrl}trips/dead-line';
  static String getAccountHistory = '${baseUrl}trips/history';
  static String getWalletAmount = '${baseUrl}trips/finance-data';
}
