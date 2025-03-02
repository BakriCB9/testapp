import 'package:test_app/model/category.dart';
import 'package:test_app/model/product.dart';

class HomeScreenState {}

class CategoryLoading extends HomeScreenState {}

class CategorySuccess extends HomeScreenState {
  List<CategoryEntity> listCategory;
  CategorySuccess(this.listCategory);
}

class CategoryError extends HomeScreenState {}

class ProductLoading extends HomeScreenState {}

class ProductSuccess extends HomeScreenState {
  List<ProductEntity> listProduct;
  ProductSuccess(this.listProduct);
}

class ProductError extends HomeScreenState {}

class SignUpLoading extends HomeScreenState {}

class SignUpSuccess extends HomeScreenState {}

class SignUpError extends HomeScreenState {}
