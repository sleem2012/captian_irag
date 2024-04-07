import 'package:captain_iraq/data/repository/general/general_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/error/failures.dart';
import 'get_roots_state.dart';

class GetRootsBloc extends Cubit<GetRootsState> {
  GetRootsBloc({required this.getRootsRepoImp}) : super(const GetRootsState.initial());

  static GetRootsBloc of(BuildContext context) => BlocProvider.of<GetRootsBloc>(context);


  final GeneralRepoImp getRootsRepoImp;

  get() async {
    try {
      emit(const GetRootsState.loading());
      final result = await getRootsRepoImp.get_roots();
      result.fold(
        (l) {
          debugPrint('================= GetRoots Bloc : ${KFailure.toError(l)}');
          emit(GetRootsState.error(error: l));
        },
        (r) {
          debugPrint('================= GetRoots Bloc : ${r.toString()}  ');
          emit(GetRootsState.success(model: r));
        },
      );
    } catch (e) {
      debugPrint('================= GetRoots Bloc (Catch): ${e.toString()} ');
      emit(const GetRootsState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }
}
