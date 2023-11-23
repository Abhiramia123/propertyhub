

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:propertyhubflutter/loginmodel.dart';
import 'package:propertyhubflutter/url.dart';

class ApiClass {
  static ApiClass instance = ApiClass();
  factory(){
    return instance;
  }
  final dio = Dio();
  final Url = URL();
  ApiClass(){
    dio.options = BaseOptions(
      baseUrl: Url.baseUrl,
      responseType: ResponseType.json
    );
  }
  Future<logindata?> loginUserApi(FormData formData)
  async{
    try {
      final _result = await dio.post(Url.loginEndpoint,
      data:FormData() );
      return logindata.fromJson(jsonDecode(_result.data));
    }on DioException catch (e) {
      print(e);
    } catch(e) {
      print(e);
    }
  }
}