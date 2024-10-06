import 'package:bloc_and_cubit_pattern/product/cubit/product_cubit.dart';
import 'package:bloc_and_cubit_pattern/product/cubit/product_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<ProductCubit>().getProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: BlocBuilder<ProductCubit, ProductCubitState>(
          builder: (context, state) {
        if (state is IsLoadingState) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.blue,
            ),
          );
        } else if (state is ProductCubitStateUpdate) {
          return ListView.builder(
              itemCount: state.productDataRes?.products?.length,
              itemBuilder: (context, index) => 
                ListTile(
                  leading: SizedBox(
                      width: 50,
                      child: Image.network(
                          state.productDataRes?.products?[index].images?[0] ??
                              "")),
                  title:
                      Text(state.productDataRes?.products?[index].title ?? ""),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(state.productDataRes?.products?[index].description ??
                          ""),
                      const SizedBox(height: 5),
                      Text(
                        "Price: ${state.productDataRes?.products?[index].price} Tk",
                      )
                    ],
                  ),
                )
              );
        }else{
          return const Text("No Data");
        }
      }),
    );
  }
}
