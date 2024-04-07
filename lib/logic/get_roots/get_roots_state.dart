import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/model/roots_model.dart';
import '../../shared/error/failures.dart';
part 'get_roots_state.freezed.dart';

@freezed
abstract class GetRootsState with _$GetRootsState {
  const factory GetRootsState.initial() = GetRootsStateInitial;
  const factory GetRootsState.loading() = GetRootsStateLoading;
  const factory GetRootsState.success({required RootModel model}) = GetRootsStateSuccess;
  const factory GetRootsState.error({required KFailure error}) = GetRootsStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs