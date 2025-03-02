import 'package:test_app/api/api_result.dart';
import 'package:test_app/model/product.dart';

class UsecaseProduct {
  Future<ApiResult<List<ProductEntity>>> getProduct() async {
    return ApiResultSuccess<List<ProductEntity>>([]);
  }
}
