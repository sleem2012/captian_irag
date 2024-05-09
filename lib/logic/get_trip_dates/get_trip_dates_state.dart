import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/model/get_trips_model.dart';
import '../../shared/error/failures.dart';
part 'get_trip_dates_state.freezed.dart';

@freezed
abstract class GetTripDatesState with _$GetTripDatesState {
  const factory GetTripDatesState.initial() = GetTripDatesStateInitial;
  const factory GetTripDatesState.loading() = GetTripDatesStateLoading;
  const factory GetTripDatesState.success({required TripsData model}) = GetTripDatesStateSuccess;
  const factory GetTripDatesState.error({required KFailure error}) = GetTripDatesStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs