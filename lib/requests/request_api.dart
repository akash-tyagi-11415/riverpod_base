import 'package:dio/dio.dart';
import 'package:farm_pik/main/config/environment.dart';
import 'package:farm_pik/requests/connectivity.dart';
import 'package:farm_pik/requests/exception_handling.dart';

class Request {
  final String apiurl;
  final dynamic body;
  final String mainUrl = Environment.instance.configuration.apiBaseUrl;
  Request({required this.apiurl, this.body});

  final Dio _dio = Dio();

  Future<Response?> getMethod() async {
    bool isInternet = await checkInternet();
    if (isInternet) {
      // showLoader();
      print(mainUrl + apiurl);

      return await _dio.get(mainUrl + apiurl).catchError((onError) {
        print('server error: $onError');
        // hideLoader();

        DioExceptions.fromDioError(onError).toString();
      });
    } else {
      return null;
    }
  }
  //
  // Future<Response?> postMethod() async {
  //   bool isInternet = await checkInternet();
  //   if (isInternet) {
  //     // showLoader();
  //     print(mainUrl + apiurl);
  //     print('body on going...');
  //     print(body);
  //     return await _dio
  //         .post(mainUrl + apiurl, data: body)
  //         .catchError((onError) {
  //       print('server error: $onError');
  //       // hideLoader();
  //
  //       DioExceptions.fromDioError(onError).toString();
  //     });
  //   } else {
  //     return null;
  //   }
  // }

}
