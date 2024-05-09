import 'package:freezed_annotation/freezed_annotation.dart';
import '../../shared/error/failures.dart';
part 'start_trip_state.freezed.dart';

@freezed
abstract class StartTripState with _$StartTripState {
  const factory StartTripState.initial() = StartTripStateInitial;
  const factory StartTripState.loading() = StartTripStateLoading;
  const factory StartTripState.success() = StartTripStateSuccess;
  const factory StartTripState.error({required KFailure error}) = StartTripStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs