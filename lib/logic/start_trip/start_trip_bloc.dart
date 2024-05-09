import 'package:captain_iraq/data/repository/trip/trip_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/error/failures.dart';
import 'start_trip_state.dart';

class StartTripBloc extends Cubit<StartTripState> {
  StartTripBloc({required this.startTripRepoImp}) : super(const StartTripState.initial());

  static StartTripBloc of(BuildContext context) => BlocProvider.of<StartTripBloc>(context);


  final TripRepoImp startTripRepoImp;

  start() async {
    try {
      emit(const StartTripState.loading());
      final result = await startTripRepoImp.start_trip();
      result.fold(
        (l) {
          debugPrint('================= StartTrip Bloc : ${KFailure.toError(l)}');
          emit(StartTripState.error(error: l));
        },
        (r) {
          debugPrint('================= StartTrip Bloc : ${r.toString()}  ');
          emit(StartTripState.success());
        },
      );
    } catch (e) {
      debugPrint('================= StartTrip Bloc (Catch): ${e.toString()} ');
      emit(const StartTripState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }
}
