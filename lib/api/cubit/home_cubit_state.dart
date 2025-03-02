
import 'package:equatable/equatable.dart';
import 'package:test_app/model/category.dart';
import 'package:test_app/model/product.dart';

class HomeState extends Equatable {
  final bool isCategoryLoading;
  final bool isProductLoading;
  final List<ProductEntity> listProduct;
  final List<CategoryEntity> listCategory;
  final String? errorCategory;
  final String? errorProduct;
  const HomeState(
      {this.isCategoryLoading = false,
      this.isProductLoading = false,
      this.listProduct = const [],
      this.listCategory = const [],
      this.errorCategory,
      this.errorProduct});

  HomeState copyWith(
      {bool? isCategoryLoading,
      bool? isProductLoading,
      List<CategoryEntity>? catList,
      List<ProductEntity>? proList,
      String? catError,
      String? proError}) {
    return HomeState(
        isCategoryLoading: isCategoryLoading ?? this.isCategoryLoading,
        isProductLoading: isProductLoading ?? this.isProductLoading,
        listCategory: catList ?? this.listCategory,
        listProduct: proList ?? this.listProduct,
        errorCategory: catError ?? this.errorCategory,
        errorProduct: proError ?? this.errorProduct);
  }
  @override
  List<Object?> get props => [
        isCategoryLoading,
        isProductLoading,
        listCategory,
        listProduct,
        errorCategory,
        errorProduct
      ];

}
  

  

