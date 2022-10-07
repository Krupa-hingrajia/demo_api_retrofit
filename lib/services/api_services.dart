import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';

import '../api_const.dart';
import '../models/list_models.dart';
import '../models/post_method.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: '${ServicesConst.baseUrl}/api')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

//Get Api
  @GET("/package-list")
  @Headers(<String, dynamic>{
    "Accept": "application/json",
    "Content-Type": "application/json",
  })
  Future<SelectPlanResponse> packageList(
      @Header('Authorization') String header);

//POST Api
  @POST("/classes-of-date")
  @Headers(<String, dynamic>{
    "Accept": "application/json",
    "Content-Type": "application/json",
  })
  Future<ClassesOfDateResponse> postResponse(
      @Header('Authorization') String header,
      @Body() ClassesOfDate classesOfDate);
}


