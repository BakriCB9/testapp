import 'package:bloc/bloc.dart';
import 'package:test_app/api/api_result.dart';
import 'package:test_app/api/cubit/home_cubit_state.dart';
import 'package:test_app/domain/usecase/usecase_category.dart';
import 'package:test_app/domain/usecase/usecase_product.dart';
import 'package:test_app/model/category.dart';
import 'package:test_app/model/product.dart';

// class HomeCubit extends Cubit<HomeCubitState> {
//   HomeCubit() : super(HomeInitState());
//   int x = 10;
//   int y = 1;
//   getCategory() async {
//     //  print('the value is categtrory loading 111');
//     emit(HomeCategoryLoading());
//     //   print('the value is categtrory loading 222');
//     var result = await Future.delayed(const Duration(seconds: 7), () {
//       x = x * 10;
//       return x;
//     });
//     // print('the result is $x');
//     if (result == 100) {
//       // print('we are in sucess category now');
//       emit(HomeCategorySuccess());
//       emit(HomeCategoryLoading());
//       emit(HomeCategorySuccess());
//     } else {
//       // print('we are in error category nbow');
//       emit(HomeCategoryError());
//     }
//     // print('we finish from the function now TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');
//   }

//   getProduct() async {
//     emit(HomeProductLoading());

//     final ans = await Future.delayed(const Duration(seconds: 7), () {
//       y = y + 1;
//       return y;
//     });
// //    print('the ans is $ans');
//     if (ans == 2) {
//       emit(HomeProductSuccess());
//       emit(HomeProductLoading());
//       emit(HomeProductSuccess());
//     } else {
//       emit(HomeProductError());
//     }
//   }
// }
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.useCaseCategory, this.usecaseProduct)
      : super(const HomeState());
  final UseCaseCategory useCaseCategory;
  final UsecaseProduct usecaseProduct;
  getCategory() async {
    emit(state.copyWith(isCategoryLoading: true, catError: null));

    ApiResult<List<CategoryEntity>> list = await useCaseCategory.getCategory();
    switch (list) {
      case ApiResultSuccess():
        emit(state.copyWith(isCategoryLoading: false, catList: list.data));
      case ApiResultError():
        emit(state.copyWith(
            isCategoryLoading: false, catError: 'Failed to get category'));
    }
  }

  getProduct() async {
    emit(state.copyWith(isProductLoading: true, proError: null));
    ApiResult<List<ProductEntity>> list = await usecaseProduct.getProduct();
    switch (list) {
      case ApiResultSuccess():
        emit(state.copyWith(isProductLoading: false, proList: list.data));
      case ApiResultError():
        emit(state.copyWith(
            isProductLoading: false, proError: 'Failed to get product'));
    }
  }

  @override
  void onChange(Change<HomeState> change) {
    super.onChange(change);
    print(change);
  }
  //{loading,success}
}
