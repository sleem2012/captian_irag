import 'package:captain_iraq/data/repository/trip/trip_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/error/failures.dart';
import 'update_trip_status_state.dart';

class UpdateTripStatusBloc extends Cubit<UpdateTripStatusState> {
  UpdateTripStatusBloc({required this.updateTripStatusRepoImp})
      : super(const UpdateTripStatusState.initial());

  static UpdateTripStatusBloc of(BuildContext context) =>
      BlocProvider.of<UpdateTripStatusBloc>(context);

  final TripRepoImp updateTripStatusRepoImp;

  update({required String id, required String status}) async {
    try {
      emit(const UpdateTripStatusState.loading());
      final result = await updateTripStatusRepoImp.update_trip_status(
          id: id, status: status);
      result.fold(
        (l) {
          debugPrint(
              '================= UpdateTripStatus Bloc : ${KFailure.toError(l)}');
          emit(UpdateTripStatusState.error(error: l));
        },
        (r) {
          debugPrint(
              '================= UpdateTripStatus Bloc : ${r.toString()}  ');
          emit( UpdateTripStatusState.success(message: r));
        },
      );
    } catch (e) {
      debugPrint(
          '================= UpdateTripStatus Bloc (Catch): ${e.toString()} ');
      emit(const UpdateTripStatusState.error(
          error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }
}
