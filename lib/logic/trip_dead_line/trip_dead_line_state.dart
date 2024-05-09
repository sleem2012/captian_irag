import 'package:freezed_annotation/freezed_annotation.dart';
import '../../shared/error/failures.dart';
part 'trip_dead_line_state.freezed.dart';

@freezed
abstract class TripDeadLineState with _$TripDeadLineState {
  const factory TripDeadLineState.initial() = TripDeadLineStateInitial;
  const factory TripDeadLineState.loading() = TripDeadLineStateLoading;
  const factory TripDeadLineState.success() = TripDeadLineStateSuccess;
  const factory TripDeadLineState.error({required KFailure error}) = TripDeadLineStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs