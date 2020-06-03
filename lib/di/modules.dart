import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModul {
  @lazySingleton
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: 'https://api.stackexchange.com',
          responseType: ResponseType.plain,
        ),
      );
}
