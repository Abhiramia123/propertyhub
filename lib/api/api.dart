


import 'package:dio/dio.dart';
import 'package:propertyhubflutter/model.dart/loginmodel.dart';
import 'package:propertyhubflutter/model.dart/otpmodel.dart';


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
      final _result = await dio.post(Url.phone,
      data:formData );
      
      return logindata.fromJson((_result.data));
    }on DioException catch (e) {
      print(e);
    } catch(e) {
      print(e);
    }
  }
   Future<otpclass?> otpuser(FormData formData)
  async{
    try {
      final _result = await dio.post(Url.otp,
      data:formData );
      return otpclass.fromJson((_result.data));
    }on DioException catch (e) {
      print(e);
    } catch(e) {
      print(e);
    }
  }
}