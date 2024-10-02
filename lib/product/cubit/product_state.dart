import 'package:bloc_and_cubit_pattern/product/model/product_data_res.dart';
import 'package:equatable/equatable.dart';

abstract class ProductState extends Equatable{}

class ProductInitState extends ProductState{

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}

class ProductStateUpdate extends ProductState {
  final ProductDataRes? productDataRes;
  ProductStateUpdate({
    required this.productDataRes
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    productDataRes
  ];

}
