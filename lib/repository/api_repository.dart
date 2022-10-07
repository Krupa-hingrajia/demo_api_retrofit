import '../api_const.dart';
import '../models/list_models.dart';
import '../models/post_method.dart';
import '../models/razorpay_models.dart';
import '../services/api_services.dart';
import 'package:dio/dio.dart' hide Headers;

import '../services/api_services_razor_pay.dart';

class APIRepository {
  final ApiService _apiService =
      ApiService(Dio(), baseUrl: '${ServicesConst.baseUrl}/api');

  final ApiServiceRazorPay _apiServiceRazorPay =
  ApiServiceRazorPay(Dio(), baseUrl: '${ServicesConst.razorPayUrl}/v1');

  //select plan
  //Get
  Future<SelectPlanResponse> selectPlan(String? header) async {
    return await _apiService.packageList(header!).catchError((onError) {
      print("api repository on select plan error ====== $onError");
      throw onError;
    });
  }

  //Post
  Future<ClassesOfDateResponse> postMethods(
      String header, ClassesOfDate classesOfDate) async {
    return await _apiService
        .postResponse(header, classesOfDate)
        .catchError((onError) {
      print("api repository on select plan error ====== $onError");
      throw onError;
    });
  }



  //Get
  Future<RazorPayModel> razorData(String? header) async {
    return await _apiServiceRazorPay.razorPayData(header!).catchError((onError) {
      print("api repository on select plan error ====== $onError");
      throw onError;
    });
  }


  //POST
  Future<CustomerDataResponse> razorDataPost(String header, CustomerDataRequest customerDataRequest) async {
    return await _apiServiceRazorPay.razorPayDataPost(header, customerDataRequest).catchError((onError) {
      print("api repository on select plan error ====== $onError");
      throw onError;
    });
  }
}
