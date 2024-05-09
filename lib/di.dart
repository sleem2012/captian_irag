import 'package:captain_iraq/data/repository/general/general_repo.dart';
import 'package:captain_iraq/data/repository/trip/trip_repo.dart';
import 'package:captain_iraq/data/repository/wallet/wallet_repo.dart';
import 'package:captain_iraq/logic/account_history/account_history_bloc.dart';
import 'package:captain_iraq/logic/banner/banner_bloc.dart';
import 'package:captain_iraq/logic/get_trip_dates/get_trip_dates_bloc.dart';
import 'package:captain_iraq/logic/get_trips/get_trips_bloc.dart';
import 'package:captain_iraq/logic/get_wallet_amount/get_wallet_amount_bloc.dart';
import 'package:captain_iraq/logic/register/register_bloc.dart';
import 'package:captain_iraq/logic/transfer_trip/transfer_trip_bloc.dart';
import 'package:captain_iraq/logic/update_trip_status/update_trip_status_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'data/repository/auth/auth_repo.dart';
import 'logic/fleet_type/fleet_type_bloc.dart';
import 'logic/get_locations/get_locations_bloc.dart';
import 'logic/get_roots/get_roots_bloc.dart';
import 'logic/login/login_bloc.dart';
import 'logic/logout/logout_bloc.dart';
import 'logic/trip_dead_line/trip_dead_line_bloc.dart';
import 'shared/api_client/api_client_impl.dart';
import 'shared/api_middleware_bloc/api_client_bloc.dart';
import 'shared/observer.dart';

import 'logic/theme/theme_cubit.dart';
import 'main.dart';

abstract class Di {
  static final GetIt _i = GetIt.instance;

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await GetStorage.init();
    Bloc.observer = MyBlocObserver();
    // await NotificationCtrl.fcm_init('Forall Sales');
    _reg();
  }

  static Future reset(context) async {
    await _unReg();
    RestartWidget.restartApp(context);
    await _i.resetScope(dispose: true);
    _reg();
  }

  static _reg() {
    ///Repos

    _i.registerLazySingleton(() => DioClientImpl(apiClientBloc: _i()));
    _i.registerLazySingleton(() => Connectivity());
    _i.registerLazySingleton(() => ThemeBloc());
    _i.registerLazySingleton(() => ApiClientBloc());
    _i.registerLazySingleton(() => ImagePicker());
    _i.registerLazySingleton(() => AuthRepoImpl());
    _i.registerLazySingleton(() => GeneralRepoImp());
    _i.registerLazySingleton(() => TripRepoImp());
    _i.registerLazySingleton(() => WalletRepoImp());

    ///bloc

    _i.registerFactory(() => LoginBloc(authRepoImpl: _i()));
    _i.registerFactory(() => RegisterBloc(registerRepoImp: _i()));
    _i.registerFactory(() => LogoutBloc(authRepoImpl: _i()));
    _i.registerFactory(() => GetLocationsBloc(getLocationsRepoImp: _i()));
    _i.registerFactory(() => BannerBloc(bannerRepoImp: _i()));
    _i.registerFactory(() => FleetTypeBloc(fleetTypeRepoImp: _i()));
    _i.registerFactory(() => GetRootsBloc(getRootsRepoImp: _i()));
    _i.registerFactory(() => GetTripsBloc(getTripsRepoImp: _i()));
    _i.registerFactory(() => GetTripDatesBloc(getTripDatesRepoImp: _i()));
    _i.registerFactory(() => TripDeadLineBloc(tripDeadLineRepoImp: _i()));
    _i.registerFactory(() => UpdateTripStatusBloc(updateTripStatusRepoImp: _i()));
    _i.registerFactory(() => TransferTripBloc(transferTripRepoImp: _i()));
    _i.registerFactory(() => AccountHistoryBloc(accountHistoryRepoImp: _i()));
    _i.registerFactory(() => GetWalletAmountBloc(walletRepoImp: _i()));
  }

  static _unReg() async {
    await _i.unregister<DioClientImpl>();

    await _i.unregister<Connectivity>();
    await _i.unregister<ThemeBloc>();
    await _i.unregister<ApiClientBloc>();

    await _i.unregister<ImagePicker>();
    await _i.unregister<AuthRepoImpl>();
    await _i.unregister<LoginBloc>();
    await _i.unregister<LogoutBloc>();
  }

  // getters
  static DioClientImpl get dioClient => _i.get<DioClientImpl>();

  static Connectivity get connectivity => _i.get<Connectivity>();

  static ThemeBloc get themeBloc => _i.get<ThemeBloc>();

  static ApiClientBloc get apiClientBloc => _i.get<ApiClientBloc>();

  static ImagePicker get imagePicker => _i.get<ImagePicker>();

  static LoginBloc get loginBloc => _i.get<LoginBloc>();

  static LogoutBloc get logOut => _i.get<LogoutBloc>();

  static GetLocationsBloc get getLocations => _i.get<GetLocationsBloc>();

  static BannerBloc get getBanner => _i.get<BannerBloc>();

  static RegisterBloc get register => _i.get<RegisterBloc>();

  static FleetTypeBloc get getFleets => _i.get<FleetTypeBloc>();

  static GetRootsBloc get getRoots => _i.get<GetRootsBloc>();

  static GetTripsBloc get getTrips => _i.get<GetTripsBloc>();

  static GetTripDatesBloc get getTripDates => _i.get<GetTripDatesBloc>();

  static TripDeadLineBloc get getDeadLine => _i.get<TripDeadLineBloc>();
  static UpdateTripStatusBloc get updateTrip => _i.get<UpdateTripStatusBloc>();
  static TransferTripBloc get transfer => _i.get<TransferTripBloc>();
  static AccountHistoryBloc get getAccountHistory => _i.get<AccountHistoryBloc>();
  static GetWalletAmountBloc get getWalletAmount => _i.get<GetWalletAmountBloc>();
}
