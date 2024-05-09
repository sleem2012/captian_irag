import 'package:captain_iraq/data/repository/trip/trip_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/error/failures.dart';
import 'get_trip_dates_state.dart';

class GetTripDatesBloc extends Cubit<GetTripDatesState> {
  GetTripDatesBloc({required this.getTripDatesRepoImp}) : super(const GetTripDatesState.initial());

  static GetTripDatesBloc of(BuildContext context) => BlocProvider.of<GetTripDatesBloc>(context);


  final TripRepoImp getTripDatesRepoImp;

  get() async {
    try {
      emit(const GetTripDatesState.loading());
      final result = await getTripDatesRepoImp.get_trip_dates();
      result.fold(
        (l) {
          debugPrint('================= GetTripDates Bloc : ${KFailure.toError(l)}');
          emit(GetTripDatesState.error(error: l));
        },
        (r) {
          r.innerData?.forEach((element) {
            dates.add(DateTime.parse(element.date??''));
          });
          debugPrint('================= GetTripDates Bloc : ${r.toString()}  ');
          emit(GetTripDatesState.success(model: r));
        },
      );
    } catch (e) {
      debugPrint('================= GetTripDates Bloc (Catch): ${e.toString()} ');
      emit(const GetTripDatesState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }


  final List<DateTime> dates=[];


}
