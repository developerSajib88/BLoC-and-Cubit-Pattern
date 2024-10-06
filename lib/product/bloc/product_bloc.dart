import 'package:bloc_and_cubit_pattern/product/bloc/product_bloc_event.dart';
import 'package:bloc_and_cubit_pattern/product/bloc/product_bloc_state.dart';
import 'package:bloc_and_cubit_pattern/product/model/product_data_res.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class ProductBloc extends Bloc<ProductBlocEvent,ProductBlocState>{

  ProductBloc():super(ProductBlocStateInit()){
    
    on<GetProductData>((event, emit)async{
      emit(ProductBlocStateIsLoading());
      http.Response response = await http.get(Uri.parse("https://dummyjson.com/products"));
      emit(ProductBlocStateUpdate(productDataRes: ProductDataRes.fromRawJson(response.body)));
    });

  }

}