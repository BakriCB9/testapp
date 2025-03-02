import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_app/api/api_result.dart';
import 'package:test_app/domain/usecase/usecase_category.dart';
import 'package:test_app/domain/usecase/usecase_product.dart';
import 'package:test_app/model/category.dart';
import 'package:test_app/model/product.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeStateBloc> {
  final UsecaseProduct usecaseProduct;
  final UseCaseCategory useCaseCategory;
  HomeScreenBloc(this.useCaseCategory, this.usecaseProduct)
      : super(const HomeStateBloc()) {
    on<GetCategoriesEvent>(_getCategory);
    on<GetProductsEvent>(_getProduct);
  }
  void _getCategory(
      GetCategoriesEvent event, Emitter<HomeStateBloc> emit) async {
    emit(state.copyWith(isCategoryLoading: true));
    ApiResult<List<CategoryEntity>> value = await useCaseCategory.getCategory();
    switch (value) {
      case ApiResultError():
        {
          emit(state.copyWith(isCategoryLoading: false, catlist: []));
        }
      case ApiResultSuccess():
        {
          emit(state.copyWith(isCategoryLoading: false, errorCategroy: ''));
        }
    }

    ///
  }

  void _getProduct(
      GetProductsEvent event, Emitter<HomeStateBloc> emit) async {
    emit(state.copyWith(isCategoryLoading: true));
    ApiResult<List<ProductEntity>> value = await usecaseProduct.getProduct();
    switch (value) {
      case ApiResultError():
        {
          emit(state.copyWith(isProductLoading: false, catlist: []));
        }
      case ApiResultSuccess():
        {
          emit(state.copyWith(isCategoryLoading: false, errorCategroy: ''));
        }
    }
  }
  @override
  void onChange(Change<HomeStateBloc> change) {
    
    super.onChange(change);
   print(change);
  }
  @override
  void onTransition(Transition<HomeScreenEvent, HomeStateBloc> transition) {
    
    super.onTransition(transition);
    print(transition);
  }

  //{CurrentState:loading , Event:GetCategoriesEvent, NextState:success}
}
