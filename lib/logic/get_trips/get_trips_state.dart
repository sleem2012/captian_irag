import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/model/get_trips_model.dart';
import '../../shared/error/failures.dart';
part 'get_trips_state.freezed.dart';

@freezed
abstract class GetTripsState with _$GetTripsState {
  const factory GetTripsState.initial() = GetTripsStateInitial;
  const factory GetTripsState.loading() = GetTripsStateLoading;
  const factory GetTripsState.success({required TripsData model}) = GetTripsStateSuccess;
  const factory GetTripsState.error({required KFailure error}) = GetTripsStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs