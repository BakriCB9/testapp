part of 'home_screen_bloc.dart';

class HomeStateBloc extends Equatable {
  final bool isCategoryLoading;
  final bool isProductLoading;
  final List<ProductEntity> productList;
  final List<CategoryEntity> categoryList;
  final String? errorProduct;
  final String? errorCategroy;
  const HomeStateBloc(
      {this.isCategoryLoading = false,
      this.isProductLoading = false,
      this.productList = const [],
      this.categoryList = const [],
      this.errorProduct,
      this.errorCategroy});

  HomeStateBloc copyWith({
    bool? isCategoryLoading,
    bool? isProductLoading,
    List<CategoryEntity>? catlist,
    List<ProductEntity>? productList,
    String? errorCategroy,
    String? errorProduct,
  }) {
    return HomeStateBloc(
      isCategoryLoading: isCategoryLoading ?? this.isCategoryLoading,
      isProductLoading: isProductLoading ?? this.isProductLoading,
      productList: productList ?? this.productList,
      categoryList: catlist ?? this.categoryList,
      errorCategroy: errorCategroy ?? this.errorCategroy,
      errorProduct: errorProduct ?? this.errorProduct,
    );
  }

  @override
  List<Object?> get props => throw UnimplementedError();
}



// class HomeScreenInitial extends HomeState {
//   @override
//   // TODO: implement props
//   List<Object?> get props => throw UnimplementedError();
// }
