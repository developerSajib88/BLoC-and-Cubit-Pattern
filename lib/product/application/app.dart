import 'package:bloc_and_cubit_pattern/product/bloc/product_bloc.dart';
import 'package:bloc_and_cubit_pattern/product/cubit/product_cubit.dart';
import 'package:bloc_and_cubit_pattern/product/view/product_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocAndCubitApp extends StatelessWidget {
  const BlocAndCubitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductBloc>(create: (context)=> ProductBloc()),
        BlocProvider<ProductCubit>(create: (context)=> ProductCubit()),
      ],
      child: const MaterialApp(
        home: ProductScreenBloc(),
      )
      );
  }
}