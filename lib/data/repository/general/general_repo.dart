import 'package:captain_iraq/data/model/fleet_type_model.dart';
import 'package:captain_iraq/data/model/roots_model.dart';

import '../../../shared/api_client/dio_client_helper.dart';
import '../../../shared/api_client/endpoints.dart';
import '../../../shared/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../di.dart';
import '../../model/banner_model.dart';
import '../../model/booking_locations.dart';

abstract class GeneralRepoAbs {
  Future<Either<KFailure, LocationsData>> get_locations();
  Future<Either<KFailure, BannerModel>> get_banners();
  Future<Either<KFailure, FleetTypeModel>> get_fleet();
  Future<Either<KFailure, RootModel>> get_roots();
}

class GeneralRepoImp implements GeneralRepoAbs {
  @override
  Future<Either<KFailure, LocationsData>> get_locations() async {
    Future<Response<dynamic>> func = Di.dioClient.get(
      KEndPoints.getLocations,
    );

    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(LocationsData.fromJson(r['data'])),
    );
  }



  @override
  Future<Either<KFailure, BannerModel>> get_banners() async{
    Future<Response<dynamic>> func = Di.dioClient.get(
      KEndPoints.getBanners,
    );

    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
          (l) => left(l),
          (r) => right(BannerModel.fromJson(r['data'])),
    );
  } @override
  Future<Either<KFailure, FleetTypeModel>> get_fleet() async{
    Future<Response<dynamic>> func = Di.dioClient.get(
      KEndPoints.getFleets,

    );

    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
          (l) => left(l),
          (r) => right(FleetTypeModel.fromJson(r)),
    );
  } @override
  Future<Either<KFailure, RootModel>> get_roots() async{
    Future<Response<dynamic>> func = Di.dioClient.get(
      KEndPoints.getRoots,

    );

    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
          (l) => left(l),
          (r) => right(RootModel.fromJson(r)),
    );
  }
}
