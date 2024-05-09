import 'package:freezed_annotation/freezed_annotation.dart';
import '../../shared/error/failures.dart';
part 'update_trip_status_state.freezed.dart';

@freezed
abstract class UpdateTripStatusState with _$UpdateTripStatusState {
  const factory UpdateTripStatusState.initial() = UpdateTripStatusStateInitial;
  const factory UpdateTripStatusState.loading() = UpdateTripStatusStateLoading;
  const factory UpdateTripStatusState.success({required String message}) = UpdateTripStatusStateSuccess;
  const factory UpdateTripStatusState.error({required KFailure error}) = UpdateTripStatusStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs