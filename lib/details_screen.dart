import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/bloc/home_screen_bloc.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // BlocBuilder<HomeScreenBloc,HomeScreenState>(builder: (context,statre){

        // })
      ],
    );
  }
}
