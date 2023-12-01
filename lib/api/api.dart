


import 'package:dio/dio.dart';
import 'package:propertyhubflutter/model.dart/listmodal.dart';
import 'package:propertyhubflutter/model.dart/loginmodel.dart';
import 'package:propertyhubflutter/model.dart/notificationmodal.dart';
import 'package:propertyhubflutter/model.dart/otpmodal.dart';
import 'package:propertyhubflutter/model.dart/prfilemodal.dart';
import 'package:propertyhubflutter/model.dart/proprty1.dart';
import 'package:propertyhubflutter/model.dart/updatemodal.dart';
import 'package:propertyhubflutter/url.dart';
import 'package:shared_preferences/shared_preferences.dart';

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



  Future<profiledata?> profileUserApi() async {
    SharedPreferences share = await SharedPreferences.getInstance();
    var token = share.getString('token');
    final result = await dio.get(Url.baseUrl + Url.profiles,
        options: Options(headers: {
          'Content': 'application/json',
          'Accepts': 'application/json',
          'Authorization': 'Bearer $token '
        }));
    return profiledata.fromJson((result.data)) ;
  }



   Future<updatedata?> UpdateUserApi(FormData formData)
  async{
     SharedPreferences share = await SharedPreferences.getInstance();
    var token = share.getString('token');
    try {
      final _result = await dio.post(Url.update,
      data:formData , options: Options(headers: {
          'Content': 'application/json',
          'Accepts': 'application/json',
          'Authorization': 'Bearer $token '
        }));
      return updatedata.fromJson((_result.data));
    }on DioException catch (e) {
      print(e);
    } catch(e) {
      print(e);
    }
  }




   Future<listclass?> listUserApi(FormData formData)
  async{
     SharedPreferences share = await SharedPreferences.getInstance();
    var token = share.getString('token');
    try {
      final _result = await dio.post(Url.owner,
      
      data:formData , options: Options(headers: {
          'Content': 'application/json',
          'Accepts': 'application/json',
          'Authorization': 'Bearer $token '
      }));
      return listclass.fromJson((_result.data));
    }on DioException catch (e) {
      print(e);
    } catch(e) {
      print(e);
    }
  }




  Future<propertyclass?> propertyUserApi()
  async{
    SharedPreferences share = await SharedPreferences.getInstance();
  var token = share.getString('token');
 
    final _result = await dio.get(Url.baseUrl+ Url.property,
      options: Options(headers: {
      'content' : 'application/json',
       'Accepts': 'application/json',
          'Authorization': 'Bearer $token '
    })
    );
    return propertyclass.fromJson((_result.data));
  }



  Future<notifyclass?> notifyUserApi()
  async{
     SharedPreferences share = await SharedPreferences.getInstance();
    var token = share.getString('token');
    try {
      final _result = await dio.post(Url.notification,
      
      // data:formData ,
       options: Options(headers: {
          'Content': 'application/json',
          'Accepts': 'application/json',
          'Authorization': 'Bearer $token '
      }));
      return notifyclass.fromJson((_result.data));
    }
    on DioException catch (e) {
      print(e);
    } catch(e) {
      print(e);
    }
  }
 
}
