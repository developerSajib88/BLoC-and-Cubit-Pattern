
import 'package:bloc_and_cubit_pattern/product/cubit/product_cubit_state.dart';
import 'package:bloc_and_cubit_pattern/product/model/product_data_res.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class ProductCubit extends Cubit<ProductCubitState>{
  ProductCubit():super(ProductInitState()); 
  
  void getProduct()async{
    emit(IsLoadingState());
    http.Response response = await http.get(Uri.parse('https://dummyjson.com/products'));
    ProductDataRes productDataRes = ProductDataRes.fromRawJson(response.body);
    emit(ProductCubitStateUpdate(productDataRes: productDataRes));
  }

}