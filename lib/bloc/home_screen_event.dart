part of 'home_screen_bloc.dart';

sealed class HomeScreenEvent {}

class GetCategoriesEvent extends HomeScreenEvent {}

class GetProductsEvent extends HomeScreenEvent {}

class GetSpecificProductDetailsEvent extends HomeScreenEvent {
  int id;
  GetSpecificProductDetailsEvent(this.id);
}
