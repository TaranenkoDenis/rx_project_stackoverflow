import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:test_rx/model/data/tags/tag.dart';
import 'package:test_rx/model/data/tags/tags_response.dart';

@Singleton(as: TagsApi)
class TagsApiImpl implements TagsApi {
  final Dio _dio;

  TagsApiImpl(this._dio);

  @override
  Future<BuiltList<Tag>> loadTags(
    int page, {
    int pageSize = 30,
    String order = 'desc',
    String sort = 'popular',
    String site = 'stackoverflow',
  }) async {
    final response = await _dio.get('/2.2/tags', queryParameters: {
      'site': site,
      'sort': sort,
      'order': order,
      'pagesize': pageSize,
      'page': page,
    });
    return TagsResponse.fromJson(response.data.toString()).items;
  }
}

abstract class TagsApi {
  Future<BuiltList<Tag>> loadTags(
    int page, {
    int pageSize = 30,
    String order = 'desc',
    String sort = 'popular',
    String site = 'stackoverflow',
  });
}
