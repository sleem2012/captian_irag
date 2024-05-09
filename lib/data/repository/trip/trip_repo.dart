import 'package:captain_iraq/data/model/get_trips_model.dart';

import '../../../shared/api_client/dio_client_helper.dart';
import '../../../shared/api_client/endpoints.dart';
import '../../../shared/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../di.dart';

abstract class TripRepoAbs {
  Future<Either<KFailure, TripsData>> get_trip();

  Future<Either<KFailure, Map>> get_trip_dead_line();

  Future<Either<KFailure, TripsData>> get_trip_dates();

  Future<Either<KFailure, Unit>> start_trip();

  Future<Either<KFailure, String>> transfer_trip({required String id});

  Future<Either<KFailure, String>> update_trip_status(
      {required String id, required String status});
}

class TripRepoImp implements TripRepoAbs {
  @override
  Future<Either<KFailure, TripsData>> get_trip() async {
    Future<Response<dynamic>> func =
        Di.dioClient.get(KEndPoints.getTrips, params: {"bookedTickets": true});
    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(TripsData.fromJson(r['data'])),
    );
  }

  @override
  Future<Either<KFailure, TripsData>> get_trip_dates() async {
    Future<Response<dynamic>> func = Di.dioClient.get(
      KEndPoints.getTripsDates,
    );
    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(TripsData.fromJson(r['data'])),
    );
  }

  @override
  Future<Either<KFailure, Unit>> start_trip() async {
    Future<Response<dynamic>> func =
        Di.dioClient.post(KEndPoints.startTrip, data: {"id": "1"});
    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, String>> transfer_trip({required String id}) async {
    Future<Response<dynamic>> func =
        Di.dioClient.post(KEndPoints.transferTrip, data: {"id": id});
    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(r['message']),
    );
  }

  @override
  Future<Either<KFailure, String>> update_trip_status(
      {required String id, required String status}) async {
    Future<Response<dynamic>> func =
        Di.dioClient.post(KEndPoints.updateStatus, data: {
      "id": id,
      "status": status,
    });
    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
          (r) => right(r['message']),
    );
  }

  Future<Either<KFailure, Map>> get_trip_dead_line() async {
    Future<Response<dynamic>> func = Di.dioClient.get(
      KEndPoints.deadLine,
    );
    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(r['data']),
    );
  }
}
