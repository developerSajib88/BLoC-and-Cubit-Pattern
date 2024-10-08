import 'package:bloc_and_cubit_pattern/product/model/product_data_res.dart';
import 'package:equatable/equatable.dart';

abstract class ProductCubitState extends Equatable{}

class ProductInitState extends ProductCubitState{

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}

class IsLoadingState extends ProductCubitState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class ProductCubitStateUpdate extends ProductCubitState {
  final ProductDataRes? productDataRes;
  ProductCubitStateUpdate({
    required this.productDataRes
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    productDataRes
  ];

}

class ProductErrorState extends ProductCubitState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

