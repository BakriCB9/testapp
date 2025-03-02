import 'package:test_app/api/api_result.dart';
import 'package:test_app/model/category.dart';

class UseCaseCategory {
  Future<ApiResult<List<CategoryEntity>>> getCategory() async {
    return ApiResultSuccess<List<CategoryEntity>>([]);
  }
}
