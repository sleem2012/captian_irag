import 'package:captain_iraq/data/model/sent_trip_search_model.dart';

import '../../../shared/api_client/dio_client_helper.dart';
import '../../../shared/api_client/endpoints.dart';
import '../../../shared/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../di.dart';
import '../../model/search_trip_model.dart';
import '../../model/seats_model.dart';

abstract class DirectTripRepoAbs {
  Future<Either<KFailure, SeatsData>> get_seats({required String tripId});

  Future<Either<KFailure, SearchData>> search_trip(
      {required SentTripSearchModel model});

  Future<Either<KFailure, Unit>> book_direct_trip(
      {required Map<String, dynamic> json});

  Future<Either<KFailure, Unit>> book_custom_trip(
      {required Map<String, dynamic> json});
}

class DirectTripRepoImp implements DirectTripRepoAbs {
  @override
  Future<Either<KFailure, SeatsData>> get_seats(
      {required String tripId}) async {
    Future<Response<dynamic>> func = Di.dioClient.get(
      "${KEndPoints.getSeats}$tripId",
    );

    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(SeatsData.fromJson(r['data'])),
    );
  }

  @override
  Future<Either<KFailure, SearchData>> search_trip(
      {required SentTripSearchModel model}) async {
    Future<Response<dynamic>> func =
        Di.dioClient.post(KEndPoints.directSearch, data: model.toJson());

    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(SearchData.fromJson(r['data'])),
    );
  }

  @override
  Future<Either<KFailure, Unit>> book_direct_trip(
      {required Map<String, dynamic> json}) async {
    Future<Response<dynamic>> func =
        Di.dioClient.postWithFiles(KEndPoints.bookDirectTrip, data: json);

    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  } @override
  Future<Either<KFailure, Unit>> book_custom_trip(
      {required Map<String, dynamic> json}) async {
    Future<Response<dynamic>> func =
        Di.dioClient.postWithFiles(KEndPoints.bookCustomTrip, data: json);

    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }
}
