import 'package:freezed_annotation/freezed_annotation.dart';
import '../../shared/error/failures.dart';
part 'transfer_trip_state.freezed.dart';

@freezed
abstract class TransferTripState with _$TransferTripState {
  const factory TransferTripState.initial() = TransferTripStateInitial;
  const factory TransferTripState.loading() = TransferTripStateLoading;
  const factory TransferTripState.success({required String message}) = TransferTripStateSuccess;
  const factory TransferTripState.error({required KFailure error}) = TransferTripStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs