import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';

import '../api_const.dart';
import '../models/razorpay_models.dart';

part 'api_services_razor_pay.g.dart';


@RestApi(baseUrl: '${ServicesConst.razorPayUrl}/v1')
abstract class ApiServiceRazorPay {
  factory ApiServiceRazorPay(Dio dio, {String baseUrl}) = _ApiServiceRazorPay;

  //Get Api RazorPay
  @GET("/payment_links")
  @Headers(<String, dynamic>{
    "Authorization": "application/json",
    "Content-Type": "application/json",
  })
  Future<RazorPayModel> razorPayData(
      @Header('Authorization') String header);


  //POST Api RazorPay
  @POST("/payment_links")
  @Headers(<String, dynamic>{
    //"Authorization": "application/json",
    "Content-Type": "application/json",
  })
  Future<CustomerDataResponse> razorPayDataPost(
      @Header('Authorization') String header,  @Body() CustomerDataRequest customerDataRequest);
}