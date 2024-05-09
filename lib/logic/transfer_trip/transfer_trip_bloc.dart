import 'package:captain_iraq/data/repository/trip/trip_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/error/failures.dart';
import 'transfer_trip_state.dart';

class TransferTripBloc extends Cubit<TransferTripState> {
  TransferTripBloc({required this.transferTripRepoImp}) : super(const TransferTripState.initial());

  static TransferTripBloc of(BuildContext context) => BlocProvider.of<TransferTripBloc>(context);


  final TripRepoImp transferTripRepoImp;

  transfer({required String id}) async {
    try {
      emit(const TransferTripState.loading());
      final result = await transferTripRepoImp.transfer_trip(id: id);
      result.fold(
        (l) {
          debugPrint('================= TransferTrip Bloc : ${KFailure.toError(l)}');
          emit(TransferTripState.error(error: l));
        },
        (r) {
          debugPrint('================= TransferTrip Bloc : ${r.toString()}  ');
          emit( TransferTripState.success(message: r));
        },
      );
    } catch (e) {
      debugPrint('================= TransferTrip Bloc (Catch): ${e.toString()} ');
      emit(const TransferTripState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }
}
