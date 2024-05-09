import 'package:captain_iraq/data/repository/trip/trip_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/get_trips_model.dart';
import '../../shared/error/failures.dart';
import 'get_trips_state.dart';

class GetTripsBloc extends Cubit<GetTripsState> {
  GetTripsBloc({required this.getTripsRepoImp})
      : super(const GetTripsState.initial());

  static GetTripsBloc of(BuildContext context) =>
      BlocProvider.of<GetTripsBloc>(context);

  final TripRepoImp getTripsRepoImp;

  get() async {
    try {
      emit(const GetTripsState.loading());
      final result = await getTripsRepoImp.get_trip();
      result.fold(
        (l) {
          debugPrint(
              '================= GetTrips Bloc : ${KFailure.toError(l)}');
          emit(GetTripsState.error(error: l));
        },
        (r) {
          debugPrint('================= GetTrips Bloc : ${r.toString()}  ');
          emit(GetTripsState.success(model: r));
        },
      );
    } catch (e) {
      debugPrint('================= GetTrips Bloc (Catch): ${e.toString()} ');
      emit(const GetTripsState.error(
          error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }

  InnerTripsData selectedTrip = InnerTripsData();

  selectTrip(InnerTripsData selected) {
    selectedTrip = selected;
  }
}
