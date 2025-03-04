import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_app/bloc/home_screen_bloc.dart';
import 'package:test_app/domain/usecase/usecase_category.dart';
import 'package:test_app/domain/usecase/usecase_product.dart';
// import 'package:test_app/bloc/home_screen_bloc.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UseCaseCategory useCaseCategory = UseCaseCategory();

  HomeScreenBloc homeCubit =
      HomeScreenBloc(UseCaseCategory(), UsecaseProduct());

  @override
  Widget build(BuildContext context) {
    /// we stop every thing in branch login
    // print('we change the login branch now');

    // context.read<HomeScreenBloc>().add(GetProductsEvent());
    // //context.read<HomeScreenBloc>().add(GetCategoriesEvent());
    // BlocProvider.of<HomeScreenBloc>(context).add(GetCategoriesEvent());
    // print(
    //     '------------------we stand in check branch now------------------------');
    // context.read<HomeScreenBloc>().add(GetCategoriesEvent());
    // print(
    //     '------------------we stand in check branch now------------------------');
    // print('bakkkkkkar');

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
              color: Colors.black,
              child: const Text('we work in login branch')),
          BlocBuilder<HomeScreenBloc, HomeStateBloc>(
            bloc: homeCubit,
            builder: (context, state) {
              if (state.isCategoryLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.categoryList.isEmpty) {
                return const Center(
                  child: Text(
                    'we success to get data',
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                );
              }

              return const Text(
                'Failded to get data now fromm category',
                style: TextStyle(fontSize: 20, color: Colors.red),
              );
            },
          ),
          const SizedBox(height: 50),
          BlocBuilder<HomeScreenBloc, HomeStateBloc>(
              bloc: homeCubit,
              builder: (context, state) {
                if (state.isProductLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state.productList.isEmpty) {
                  return const Center(
                    child: Text(
                      'we success to get data of product',
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                  );
                }

                return const Text(
                  'Failded to get data now',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                );
              })
        ],
      ),
    );
  }
}
