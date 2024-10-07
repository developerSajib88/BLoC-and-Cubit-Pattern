import 'package:bloc_and_cubit_pattern/product/model/product_data_res.dart';
import 'package:equatable/equatable.dart';

abstract class ProductBlocState extends Equatable{}

class ProductBlocStateInit extends ProductBlocState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class ProductBlocStateIsLoading extends ProductBlocState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class ProductBlocStateUpdate extends ProductBlocState{
  
  final ProductDataRes? productDataRes;
  ProductBlocStateUpdate({required this.productDataRes});

  @override
  // TODO: implement props
  List<Object?> get props => [
    productDataRes
  ];
}

class ProductBlocStateError extends ProductBlocState{
  ProductBlocStateError({dynamic e}){
    print("Error: $e");
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

