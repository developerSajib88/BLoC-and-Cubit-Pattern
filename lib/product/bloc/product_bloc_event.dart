import 'package:equatable/equatable.dart';

abstract class ProductBlocEvent extends Equatable{}

class GetProductData extends ProductBlocEvent{

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
  
}