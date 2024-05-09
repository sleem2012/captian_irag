import 'package:captain_iraq/data/repository/trip/trip_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/error/failures.dart';
import 'trip_dead_line_state.dart';

class TripDeadLineBloc extends Cubit<TripDeadLineState> {
  TripDeadLineBloc({required this.tripDeadLineRepoImp}) : super(const TripDeadLineState.initial());

  static TripDeadLineBloc of(BuildContext context) => BlocProvider.of<TripDeadLineBloc>(context);


  final TripRepoImp tripDeadLineRepoImp;

  get() async {
    try {
      emit(const TripDeadLineState.loading());
      final result = await tripDeadLineRepoImp.get_trip_dead_line();
      result.fold(
        (l) {
          debugPrint('================= TripDeadLine Bloc : ${KFailure.toError(l)}');
          emit(TripDeadLineState.error(error: l));
        },
        (r) {
          if(r.isNotEmpty) {
            deadlineMessage="رحتلك القادمة بعد ${r['hours']} ساعات و ${r['minutes']} دقيقه ";
          }
          debugPrint('================= TripDeadLine Bloc : ${r.toString()}  ');
          emit(const TripDeadLineState.success());
        },
      );
    } catch (e) {
      debugPrint('================= TripDeadLine Bloc (Catch): ${e.toString()} ');
      emit(const TripDeadLineState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }


  String? deadlineMessage;
}
